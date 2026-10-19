###### Class com.json.adqualitysdk.sdk.i.aw (com.ironsource.adqualitysdk.sdk.i.aw)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/aw;
.super Lcom/ironsource/adqualitysdk/sdk/i/ao$3;
.source ""


# static fields
.field private static c:[C = null

.field private static d:J = 0x0L

.field private static e:I = 0x0

.field private static f:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->c:[C

    const-wide v0, 0x1a372a0a18bfecc5L    # 2.180621314645752E-182

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->d:J

    return-void

    nop

    :array_12
    .array-data 2
        0x67s
        -0x134es
        -0x2604s
        -0x39d4s
        -0x6c26s
        0x7f0fs
        0x4a54s
        0x5591s
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/as;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/as;)V

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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/aw;->c:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/aw;->d:J

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
.method public final ﺙ()Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5f

    if-nez v0, :cond_11

    const/16 v0, 0x5f

    goto :goto_13

    :cond_11
    const/16 v0, 0x24

    :goto_13
    const v2, 0x93bd

    const-string v3, ""

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v3, v1, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-char v2, v2

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_6a

    :cond_43
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v3, v1, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    ushr-int v3, v4, v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    mul-int v4, v4, v2

    int-to-char v2, v4

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_6a
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public final ﻐ()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_21

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->g()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x14

    :try_start_1d
    div-int/2addr v2, v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception v0

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->g()Ljava/util/List;

    move-result-object v0

    :goto_29
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x62

    if-nez v1, :cond_3a

    const/16 v1, 0x34

    goto :goto_3c

    :cond_3a
    const/16 v1, 0x62

    :goto_3c
    if-ne v1, v2, :cond_3f

    return-object v0

    :cond_3f
    const/4 v0, 0x0

    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    throw v0
.end method

.method public final ﻛ()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_21

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->i()I

    move-result v0

    const/16 v2, 0xc

    :try_start_1d
    div-int/2addr v2, v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception v0

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->i()I

    move-result v0

    :goto_29
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public final ｋ()Z
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    if-eq v0, v3, :cond_40

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    cmp-long v10, v7, v5

    add-int/lit8 v10, v10, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v9

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    cmpl-float v4, v4, v9

    rsub-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    invoke-static {v10, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->a(IIC)Ljava/lang/String;

    move-result-object v4

    :goto_37
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_64

    :cond_40
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->乁()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v5

    shl-int v5, v1, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    div-int/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v7

    add-int/2addr v6, v2

    int-to-char v6, v6

    invoke-static {v5, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/aw;->a(IIC)Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :goto_64
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    rem-int/2addr v3, v1

    const/16 v1, 0x5d

    if-eqz v3, :cond_74

    const/16 v3, 0x31

    goto :goto_76

    :cond_74
    const/16 v3, 0x5d

    :goto_76
    if-eq v3, v1, :cond_7d

    const/4 v1, 0x4

    :try_start_79
    div-int/2addr v1, v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7b

    return v0

    :catchall_7b
    move-exception v0

    throw v0

    :cond_7d
    return v0
.end method

.method public final ﾇ()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->h()Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    const/4 v1, 0x1

    :goto_21
    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method

.method public final ﾒ()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ao$3;->リ()Lcom/ironsource/adqualitysdk/sdk/i/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/as;->c()I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/aw;->e:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/aw;->f:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method
