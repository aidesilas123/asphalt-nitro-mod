###### Class com.json.adqualitysdk.sdk.i.af (com.ironsource.adqualitysdk.sdk.i.af)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ironsource/adqualitysdk/sdk/i/af;",
        ">;"
    }
.end annotation


# static fields
.field private static a:J = -0x530c4bf888ad06f2L

.field private static b:I = 0x0

.field private static c:C = '\u0000'

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lcom/ironsource/adqualitysdk/sdk/i/iv;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    return-void
.end method

.method private e()J
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xd

    if-nez v0, :cond_11

    const/16 v0, 0x18

    goto :goto_13

    :cond_11
    const/16 v0, 0xd

    :goto_13
    const/4 v2, 0x1

    const-string v3, "\uf4c7\ub41f"

    const v4, 0x9557

    const-string v5, "\uf90e\u7752\ub407\uacf3"

    const-string v6, "\u960a\u91d2\u56ab\uff95"

    const/4 v7, 0x0

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v12, v8, v10

    shl-int/2addr v4, v12

    goto :goto_43

    :cond_32
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    sub-int/2addr v4, v12

    :goto_43
    int-to-char v4, v4

    invoke-static {v6, v5, v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/af;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    if-eqz v2, :cond_66

    const/16 v2, 0x10

    :try_start_62
    div-int/2addr v2, v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_64

    return-wide v0

    :catchall_64
    move-exception v0

    throw v0

    :cond_66
    return-wide v0
.end method

.method private f()J
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\u4d6f\ubf74\ud1e3\ub67f"

    const-string v5, "\uf90e\u7752\ub407\uacf3"

    const-string v6, "\u1d2b\uaf69"

    cmpl-float v2, v2, v3

    add-int/lit16 v2, v2, 0x7fd1

    int-to-char v2, v2

    invoke-static {v4, v5, v1, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/af;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    goto :goto_42

    :cond_41
    const/4 v2, 0x1

    :goto_42
    if-eq v2, v4, :cond_4a

    const/16 v2, 0x53

    :try_start_46
    div-int/2addr v2, v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_48

    return-wide v0

    :catchall_48
    move-exception v0

    throw v0

    :cond_4a
    return-wide v0
.end method

.method private g()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ｋ()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x60

    if-nez v1, :cond_21

    const/16 v1, 0x58

    goto :goto_23

    :cond_21
    const/16 v1, 0x60

    :goto_23
    if-eq v1, v2, :cond_2b

    const/4 v1, 0x3

    :try_start_26
    div-int/lit8 v1, v1, 0x0
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_29

    return-object v0

    :catchall_29
    move-exception v0

    throw v0

    :cond_2b
    return-object v0
.end method

.method private h(Lcom/ironsource/adqualitysdk/sdk/i/af;)I
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->f()J

    move-result-wide v2

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->f()J

    move-result-wide v4

    cmp-long p1, v2, v4

    const/16 v0, 0x2a

    :try_start_19
    div-int/2addr v0, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_26

    const/16 v0, 0x26

    if-gez p1, :cond_21

    const/16 p1, 0x11

    goto :goto_23

    :cond_21
    const/16 p1, 0x26

    :goto_23
    if-eq p1, v0, :cond_36

    goto :goto_34

    :catchall_26
    move-exception p1

    throw p1

    :cond_28
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->f()J

    move-result-wide v2

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->f()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_36

    :goto_34
    const/4 p1, -0x1

    return p1

    :cond_36
    const/16 p1, 0xd

    cmp-long v0, v2, v4

    if-nez v0, :cond_3f

    const/16 v0, 0xd

    goto :goto_41

    :cond_3f
    const/16 v0, 0x28

    :goto_41
    if-eq v0, p1, :cond_4f

    const/4 p1, 0x1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :cond_4f
    return v1
.end method

.method private static i()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῠ:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_28

    :cond_1e
    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ῠ:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method private j(Lcom/ironsource/adqualitysdk/sdk/i/af;)I
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    if-nez v0, :cond_11

    const/16 v0, 0x3a

    goto :goto_13

    :cond_11
    const/16 v0, 0x3c

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->e()J

    move-result-wide v0

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->e()J

    move-result-wide v3

    cmp-long v5, v0, v3

    const/16 v6, 0x2d

    :try_start_22
    div-int/2addr v6, v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_26

    if-gez v5, :cond_36

    goto :goto_34

    :catchall_26
    move-exception p1

    throw p1

    :cond_28
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->e()J

    move-result-wide v0

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->e()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_36

    :goto_34
    const/4 p1, -0x1

    return p1

    :cond_36
    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-nez v6, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x1

    :goto_3d
    if-eqz v2, :cond_40

    return v5

    :cond_40
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->h(Lcom/ironsource/adqualitysdk/sdk/i/af;)I

    move-result p1

    return p1
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/af;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/af;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/af;->c:C

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


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->j(Lcom/ironsource/adqualitysdk/sdk/i/af;)I

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_27

    const/16 v0, 0xe

    :try_start_23
    div-int/2addr v0, v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception p1

    throw p1

    :cond_27
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    const/4 v2, 0x1

    :goto_14
    if-eq v2, v0, :cond_32

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-eq v2, v0, :cond_32

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/af;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/af;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4d

    if-nez p1, :cond_43

    const/16 p1, 0x4d

    goto :goto_45

    :cond_43
    const/16 p1, 0x23

    :goto_45
    if-eq p1, v0, :cond_48

    return v1

    :cond_48
    const/16 p1, 0x1a

    :try_start_4a
    div-int/2addr p1, v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    return v1

    :catchall_4c
    move-exception p1

    throw p1
.end method

.method public final hashCode()I
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_33

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :cond_33
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    throw v0
.end method

.method public final ﻐ(Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "\u4449\ud17c\ua680\ue487"

    const-string v2, "\uf90e\u7752\ub407\uacf3"

    const v3, -0x7f2e83bc

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0x87a6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-char v4, v4

    const-string v5, "\u3415\u0913\ud698"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/af;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_33} :catch_3d

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 p1, p1, 0x2

    :catch_3d
    return-void
.end method

.method public final ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iv;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final declared-synchronized ﻛ(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    if-nez v0, :cond_12

    const/16 v0, 0x5e

    goto :goto_14

    :cond_12
    const/16 v0, 0x9

    :goto_14
    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_4e

    const/16 v1, 0x5c

    :try_start_1e
    div-int/lit8 v1, v1, 0x0
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_23

    if-eqz v0, :cond_42

    goto :goto_35

    :catchall_23
    move-exception p1

    :try_start_24
    throw p1

    :cond_25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x2d

    if-eqz v0, :cond_31

    const/4 v0, 0x6

    goto :goto_33

    :cond_31
    const/16 v0, 0x2d

    :goto_33
    if-eq v0, v1, :cond_42

    :goto_35
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/af;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ju;->ﾒ(Lorg/json/JSONObject;ILjava/util/List;)V

    :cond_42
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-string v2, "\u98a0\ua069\u108f\uaac4"

    const/4 v3, 0x0

    const v4, 0x9b9e

    const-string v5, "\uf90e\u7752\ub407\uacf3"

    const-string v6, "\ud4a2\u807a\u9efb\u619b"

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    cmpl-float v3, v7, v3

    sub-int/2addr v4, v3

    int-to-char v3, v4

    goto :goto_3e

    :cond_2d
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    cmpl-float v3, v7, v3

    shl-int v3, v4, v3

    int-to-char v3, v3

    :goto_3e
    invoke-static {v6, v5, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/af;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ﾇ()Lorg/json/JSONObject;
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x3b

    if-nez v0, :cond_12

    const/16 v0, 0x48

    goto :goto_14

    :cond_12
    const/16 v0, 0x3b

    :goto_14
    if-eq v0, v2, :cond_23

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_40

    const/16 v2, 0x30

    :try_start_1e
    div-int/lit8 v2, v2, 0x0
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_29

    :catchall_21
    move-exception v0

    :try_start_22
    throw v0

    :cond_23
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/af;->f:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    :goto_29
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/2addr v2, v1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_40

    const/16 v3, 0x5c

    if-nez v2, :cond_38

    const/16 v1, 0x5c

    :cond_38
    if-eq v1, v3, :cond_3c

    monitor-exit p0

    return-object v0

    :cond_3c
    const/4 v0, 0x0

    :try_start_3d
    throw v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/af;->ﾇ()Lorg/json/JSONObject;

    move-result-object v0

    const v1, -0x7f2e83bc

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    const v1, 0x87a6

    const-string v3, ""

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v1

    int-to-char v1, v3

    const-string v3, "\u4449\ud17c\ua680\ue487"

    const-string v4, "\uf90e\u7752\ub407\uacf3"

    const-string v5, "\u3415\u0913\ud698"

    invoke-static {v3, v4, v2, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/af;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/af;->e:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/af;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
