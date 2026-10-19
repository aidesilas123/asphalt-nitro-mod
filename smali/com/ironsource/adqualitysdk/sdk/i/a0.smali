###### Class com.json.adqualitysdk.sdk.i.a0 (com.ironsource.adqualitysdk.sdk.i.a0)
.class final Lcom/ironsource/adqualitysdk/sdk/i/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = -0x1b8cef98ffb00c96L

.field private static b:[C = null

.field private static c:C = '\u0005'

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Ljava/lang/Boolean;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->b:[C

    return-void

    :array_a
    .array-data 2
        0x45s
        0x72s
        0x6fs
        0x20s
        0x73s
        0x79s
        0x6es
        0x63s
        0x68s
        0x69s
        0x7as
        0x67s
        0x65s
        0x76s
        0x74s
        0x75s
        0x64s
        0x6cs
        0x61s
        0x54s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
    .end array-data
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->f:Ljava/lang/Boolean;

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->k:I

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v4, 0x0

    if-eq v0, v3, :cond_28

    iget-wide v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g:J

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x1

    :goto_22
    if-eqz v2, :cond_25

    return-wide v5

    :cond_25
    :try_start_25
    throw v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    throw p0

    :cond_28
    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g:J

    :try_start_2a
    throw v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    throw p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v1, v0, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v1, v1, 0x2

    iput-wide p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g:J

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 p0, 0x3d

    if-nez v0, :cond_1b

    const/16 v0, 0x3d

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2b

    :goto_1d
    if-eq v0, p0, :cond_20

    return-wide p1

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

.method private c(Lorg/json/JSONObject;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-wide/16 v3, -0x1

    const/16 v5, 0x30

    const-string v6, "\uf319\ue078\ud5f8"

    const-wide/16 v7, 0x0

    const-string v9, ""

    if-eq v0, v1, :cond_3e

    const/16 v0, 0x3485

    :try_start_1f
    invoke-static {v9, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    rem-int/2addr v0, v10

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->k:I

    const/16 v10, 0xe

    if-eq v0, v6, :cond_39

    const/16 v0, 0xe

    goto :goto_3b

    :cond_39
    const/16 v0, 0x38

    :goto_3b
    if-eq v0, v10, :cond_54

    goto :goto_a0

    :cond_3e
    invoke-static {v9, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit16 v0, v0, 0x137c

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->k:I

    if-eq v0, v6, :cond_a0

    :cond_54
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->f(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_a0

    :cond_5b
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    cmp-long v5, v0, v3

    add-int/lit8 v5, v5, 0x35

    int-to-byte v0, v5

    const-string v1, "\u0013\u000b\u00a9"

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j:J

    add-long/2addr v0, v5

    const-string v5, "\uf31e\u76e0\uf8f7"

    const v6, 0x85fa

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v7

    add-int/2addr v11, v6

    invoke-static {v5, v11}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j:J

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_94} :catch_119

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v5, v5, 0x39

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v5, 0x0

    goto :goto_de

    :cond_a0
    :goto_a0
    :try_start_a0
    invoke-static {v9, v5, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    const-string v5, "\u0013\n"

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-static {v0, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-wide v9, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i:J

    add-long/2addr v5, v9

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v0, v9, v7

    rsub-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    const-string v7, "\u0013\n\u0086"

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-static {v0, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-wide v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i:J

    invoke-virtual {p1, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide v0, v5

    const/4 v5, 0x1

    :goto_de
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ib;->ﱟ:Ljava/lang/String;

    invoke-virtual {p1, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x27

    if-nez v0, :cond_f0

    const/16 v0, 0x27

    goto :goto_f2

    :cond_f0
    const/16 v0, 0x1c

    :goto_f2
    if-eq v0, v1, :cond_f5

    goto :goto_113

    :cond_f5
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    const-string v1, "\u0013\t\u00a4"

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v3

    add-int/lit8 v8, v8, 0x2

    invoke-static {v0, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_113
    invoke-direct {p0, p1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d(Lorg/json/JSONObject;Z)V

    invoke-direct {p0, p1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->k(Lorg/json/JSONObject;Z)V
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_119} :catch_119

    :catch_119
    return-void
.end method

.method private d(Lorg/json/JSONObject;Z)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x24

    int-to-byte v1, v1

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    const-string v3, "\t\u0013\u0097"

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x1

    if-eqz p2, :cond_31

    const/4 p2, 0x0

    goto :goto_32

    :cond_31
    const/4 p2, 0x1

    :goto_32
    if-eqz p2, :cond_55

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x24

    int-to-byte p2, p2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {p2, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j:J

    :goto_53
    add-long/2addr v4, v6

    goto :goto_82

    :cond_55
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 p2, p2, 0x2f

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 p2, p2, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    const/4 v2, 0x0

    const-string v4, "\u0000\u0013\u008a"

    cmpl-float p2, p2, v2

    add-int/lit8 p2, p2, 0x15

    int-to-byte p2, p2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {p2, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i:J

    goto :goto_53

    :goto_82
    :try_start_82
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x24

    int-to-byte p2, p2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {p2, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_82 .. :try_end_9c} :catch_b2

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a9

    const/4 v1, 0x0

    :cond_a9
    if-eqz v1, :cond_ac

    return-void

    :cond_ac
    const/16 p1, 0x1c

    :try_start_ae
    div-int/2addr p1, v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_b0

    return-void

    :catchall_b0
    move-exception p1

    throw p1

    :catch_b2
    :cond_b2
    return-void
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x13

    if-eqz v0, :cond_11

    const/16 v0, 0x59

    goto :goto_13

    :cond_11
    const/16 v0, 0x13

    :goto_13
    const/4 v3, 0x0

    iput-wide p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j:J

    if-ne v0, v2, :cond_2f

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p0, 0xa

    if-nez v1, :cond_27

    const/16 v0, 0x30

    goto :goto_29

    :cond_27
    const/16 v0, 0xa

    :goto_29
    if-ne v0, p0, :cond_2c

    return-wide p1

    :cond_2c
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    throw p0

    :cond_2f
    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    throw p0
.end method

.method private f(Lorg/json/JSONObject;)Z
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h:J

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x36

    int-to-byte v2, v2

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    const-string v4, "\u0013\u000b\u00a9"

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x50

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    rsub-int/lit8 v6, v6, 0x2

    const-string v7, "\u0013\n"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    const/16 p1, 0x4d

    cmp-long v5, v0, v2

    if-gtz v5, :cond_5f

    const/16 v0, 0x4d

    goto :goto_61

    :cond_5f
    const/16 v0, 0x62

    :goto_61
    const/4 v1, 0x1

    if-eq v0, p1, :cond_78

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_71

    const/4 v1, 0x0

    :cond_71
    if-eqz v1, :cond_74

    return v4

    :cond_74
    const/4 p1, 0x0

    :try_start_75
    throw p1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    throw p1

    :cond_78
    return v1
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iput-wide p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i:J

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p0, 0x16

    if-eqz v1, :cond_1b

    const/16 v0, 0x16

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x41

    :goto_1d
    if-eq v0, p0, :cond_20

    return-wide p1

    :cond_20
    const/16 p0, 0x17

    :try_start_22
    div-int/lit8 p0, p0, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return-wide p1

    :catchall_25
    move-exception p0

    throw p0
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4e

    if-nez v0, :cond_11

    const/16 v0, 0x40

    goto :goto_13

    :cond_11
    const/16 v0, 0x4e

    :goto_13
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->f:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_18

    return-object p1

    :cond_18
    const/4 p0, 0x0

    :try_start_19
    throw p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p0

    throw p0
.end method

.method private static i(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->b:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->c:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static j(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/a0;->a:J

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

.method private k(Lorg/json/JSONObject;Z)V
    .registers 15

    :try_start_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    rsub-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    const-string v2, "\u0012\u0013\t\u0013\u0011\u0004\u0011\u0005\u0084"

    const-string v3, ""

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_11b

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_26

    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    const/4 v3, 0x1

    :goto_27
    const/4 v4, 0x0

    if-eq v3, v2, :cond_10b

    const-wide/16 v5, 0x0

    const-string v3, "\u0094"

    if-eqz p2, :cond_83

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 v7, p2, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v7, 0x43

    if-nez p2, :cond_41

    const/16 p2, 0x43

    goto :goto_43

    :cond_41
    const/16 p2, 0x45

    :goto_43
    const v8, 0xa986

    const-string v9, "\uf31f"

    if-eq p2, v7, :cond_62

    :try_start_4a
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v10

    cmp-long p2, v10, v5

    add-int/2addr p2, v8

    invoke-static {v9, p2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p2, v7, v5

    if-lez p2, :cond_bf

    goto :goto_7b

    :cond_62
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    const-wide/16 v10, 0x1

    cmp-long p2, v5, v10

    add-int/2addr p2, v8

    invoke-static {v9, p2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p2, v7, v10

    if-lez p2, :cond_bf

    :goto_7b
    iget-wide v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i:J

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_c0

    :cond_83
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0x20

    int-to-byte p2, p2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v2

    invoke-static {p2, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_9f} :catch_11b

    cmp-long p2, v7, v5

    if-lez p2, :cond_bf

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 p2, p2, 0x15

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 p2, p2, 0x2

    :try_start_ad
    iget-wide v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j:J

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_b4} :catch_11b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v5, v5, 0x27

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_c0

    :cond_bf
    move-object p2, v4

    :goto_c0
    const/16 v5, 0x5f

    if-eqz p2, :cond_c7

    const/16 v6, 0x47

    goto :goto_c9

    :cond_c7
    const/16 v6, 0x5f

    :goto_c9
    if-eq v6, v5, :cond_10b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v5, v5, 0x2b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_f6

    :try_start_d7
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    mul-int/lit8 v1, v1, 0x12

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    mul-int/lit8 v2, v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_ee
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10b

    :cond_f6
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, v0, v1

    rsub-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    sub-int/2addr v2, v1

    invoke-static {v0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_10a
    .catch Lorg/json/JSONException; {:try_start_d7 .. :try_end_10a} :catch_11b

    goto :goto_ee

    :cond_10b
    :goto_10b
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_118

    return-void

    :cond_118
    :try_start_118
    throw v4
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_119

    :catchall_119
    move-exception p1

    throw p1

    :catch_11b
    return-void
.end method

.method private static l(Lorg/json/JSONObject;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/4 v3, 0x3

    rsub-int/lit8 v2, v2, 0x3

    const-string v4, "\u0013\n\u0086"

    invoke-static {v0, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x3

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x54

    :goto_2f
    if-eq v0, v3, :cond_32

    goto :goto_55

    :cond_32
    const v0, 0x85f9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v0

    const-string v0, "\uf31e\u76e0\uf8f7"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x3e

    if-eqz p0, :cond_51

    const/16 p0, 0x33

    goto :goto_53

    :cond_51
    const/16 p0, 0x3e

    :goto_53
    if-eq p0, v0, :cond_6a

    :goto_55
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    if-eqz p0, :cond_63

    const/4 v1, 0x1

    :cond_63
    if-eq v1, v0, :cond_66

    return v0

    :cond_66
    const/4 p0, 0x0

    :try_start_67
    throw p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p0

    throw p0

    :cond_6a
    return v1
.end method

.method static synthetic m(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h:J

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p0, 0x0

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_22

    const/16 v0, 0x14

    :try_start_1e
    div-int/2addr v0, p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-wide v2

    :catchall_20
    move-exception p0

    throw p0

    :cond_22
    return-wide v2
.end method

.method static synthetic n(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-wide p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h:J

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const/16 p0, 0x22

    :try_start_17
    div-int/2addr p0, v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_32

    :goto_18
    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p0, 0x1a

    if-eqz v1, :cond_27

    const/16 v0, 0x3c

    goto :goto_29

    :cond_27
    const/16 v0, 0x1a

    :goto_29
    if-eq v0, p0, :cond_31

    const/16 p0, 0x3a

    :try_start_2d
    div-int/2addr p0, v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return-wide p1

    :catchall_2f
    move-exception p0

    throw p0

    :cond_31
    return-wide p1

    :catchall_32
    move-exception p0

    throw p0
.end method


# virtual methods
.method final o(Lorg/json/JSONObject;)Z
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->l(Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_6a

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_22

    goto :goto_6a

    :cond_22
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32

    :try_start_2e
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->c(Lorg/json/JSONObject;)V

    return v1

    :cond_32
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->c(Lorg/json/JSONObject;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36

    return v1

    :catch_36
    move-exception p1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "\uf33e\uca7a\u81f5\u5f64\u16fd\uec43\uabdd\u6148\u38d2\uf678\ucda9\u8b37\u42a5\u1827\ud786\uad12\u6494\u220a\uf992\ub0f4\u8e6c"

    const-string v6, "\u0001\u0002\u0002\u0003\u0002\u0004\u0000\t\u0007\u0008\u0006\u0003\u0001\u0007\u0005\u000e\u0005\u0007\r\u0001\r\u000e\u000b\u0007\u00b4"

    cmpl-float v0, v0, v1

    rsub-int v0, v0, 0x397a

    invoke-static {v5, v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    cmp-long v1, v7, v3

    rsub-int/lit8 v1, v1, 0x41

    int-to-byte v1, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v5, v7, v3

    add-int/lit8 v5, v5, 0x18

    invoke-static {v1, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->i(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7c

    const/16 p1, 0x55

    :try_start_78
    div-int/2addr p1, v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7a

    return v2

    :catchall_7a
    move-exception p1

    throw p1

    :cond_7c
    return v2
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.a0.a (com.ironsource.adqualitysdk.sdk.i.a0$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/a0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/a0;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0xc9

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a:[C

    return-void

    :array_a
    .array-data 2
        0x11ds
        0x132s
        0x136s
        0x12es
        0x13cs
        0x13ds
        0x12as
        0x139s
        0x11cs
        0x142s
        0x137s
        0x12cs
        0x131s
        0x13bs
        0x138s
        0x143s
        0x10es
        0xe9s
        0x130s
        0x13fs
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_10
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p1, v3, :cond_42

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->c:Z

    if-eqz p3, :cond_78

    array-length p0, p1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_54
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_71

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-char v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_54

    :cond_71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_78
    array-length p1, p0

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p1, p1, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_7f
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_9c

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->e:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻏ()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_27

    const/4 v7, 0x0

    goto :goto_28

    :cond_27
    const/4 v7, 0x1

    :goto_28
    if-eq v7, v1, :cond_7d

    goto :goto_40

    :cond_2b
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻏ()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_3d

    const/4 v7, 0x0

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x1

    :goto_3e
    if-eq v7, v1, :cond_7d

    :goto_40
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->e:I

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->f:I

    rem-int/lit8 v5, v5, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h(Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﱟ()J

    move-result-wide v5

    const v1, 0x100007f

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v1

    const/4 v1, 0x0

    const-string v8, "\u008e\u0084\u0090\u0082\u008b\u008f\u008e\u008d\u008c\u008b\u008a\u0089\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v1, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v10, "\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0086\u0092\u008e\u0084\u0094\u008e\u0084\u0085\u0092\u0093\u008b\u0082\u0086\u0086\u0084\u0093\u0092\u008b\u0082\u0092\u008e\u008f\u008e\u008e\u0091"

    cmp-long v11, v8, v3

    add-int/lit8 v11, v11, 0x7e

    invoke-static {v1, v1, v11, v10}, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_84

    :cond_7d
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h(Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_84
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﮐ()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->b(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﱟ()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->n(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->a(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J

    move-result-wide v1

    sub-long v1, v5, v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->m(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J

    move-result-wide v1

    sub-long/2addr v5, v1

    invoke-static {v0, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    return-void
.end method
