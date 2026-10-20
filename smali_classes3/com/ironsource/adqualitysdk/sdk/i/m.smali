###### Class com.json.adqualitysdk.sdk.i.m (com.ironsource.adqualitysdk.sdk.i.m)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = 0x60b778c43bef417cL

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\u4135\u33fb\ua4f9\u19cd\u8afb\u7fda\uf0b7\u65bd\ud6b7\u4b84\u3cce\ub1ba\u2264\u975c\u086f\ufd46\u6e40\ue350\u5432\uc92a\uba62\u2f45"

    cmp-long v6, v1, v3

    rsub-int v1, v6, 0x72f6

    invoke-static {v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/m;->a:J

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

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-eqz v0, :cond_11

    const/16 v0, 0x37

    goto :goto_13

    :cond_11
    const/16 v0, 0x36

    :goto_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_8a

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->h()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1f

    const/4 v0, 0x6

    goto :goto_21

    :cond_1f
    const/16 v0, 0x8

    :goto_21
    if-eq v0, v1, :cond_82

    const/16 p0, 0x16

    const/16 v0, 0x55

    if-eqz p3, :cond_2c

    const/16 p3, 0x16

    goto :goto_2e

    :cond_2c
    const/16 p3, 0x55

    :goto_2e
    if-eq p3, p0, :cond_31

    goto :goto_81

    :cond_31
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_54

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p0

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result p0

    const/16 v3, 0x4a

    :try_start_4b
    div-int/2addr v3, v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_52

    if-eqz p0, :cond_4f

    const/4 p3, 0x0

    :cond_4f
    if-eqz p3, :cond_64

    goto :goto_81

    :catchall_52
    move-exception p0

    throw p0

    :cond_54
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p0

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_62

    :cond_61
    const/4 p3, 0x0

    :goto_62
    if-eqz p3, :cond_81

    :cond_64
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/2addr p0, v0

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_77

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_77
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7e
    throw v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p0

    throw p0

    :cond_81
    :goto_81
    return-void

    :cond_82
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->h()Z

    :try_start_8d
    throw v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p0

    throw p0
.end method

.method private static d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    const/4 v0, 0x0

    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    throw v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->h()Z

    move-result v0

    const/16 v1, 0x3e

    if-eqz v0, :cond_15

    const/16 v0, 0x12

    goto :goto_17

    :cond_15
    const/16 v0, 0x3e

    :goto_17
    if-eq v0, v1, :cond_3a

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    const/4 p1, 0x1

    :goto_2a
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v1, :cond_39

    const/16 p0, 0x27

    :try_start_35
    div-int/2addr p0, v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception p0

    throw p0

    :cond_39
    return-void

    :cond_3a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p0

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->VERBOSE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result p0

    if-eqz p0, :cond_57

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 10

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v2, :cond_2b

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/2addr p1, v4

    if-nez p1, :cond_1d

    const/16 p1, 0x4f

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x2

    :goto_1e
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ne p1, v4, :cond_28

    return-void

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :cond_2b
    if-eqz p4, :cond_64

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p4, p0, 0x80

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/2addr p0, v4

    if-eqz p0, :cond_39

    const/4 v1, 0x1

    :cond_39
    if-eq v1, v2, :cond_58

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p0

    sget-object p4, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->ERROR:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p0, p4}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result p0

    if-eqz p0, :cond_64

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 p4, p0, 0x80

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/2addr p0, v4

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :cond_58
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p0

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->ERROR:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    :try_start_61
    throw v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    throw p0

    :cond_64
    :goto_64
    return-void
.end method

.method private static h()Z
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x22

    if-eqz v0, :cond_11

    const/16 v0, 0x22

    goto :goto_12

    :cond_11
    const/4 v0, 0x5

    :goto_12
    if-eq v0, v1, :cond_1d

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ()Z

    move-result v0

    return v0

    :cond_1d
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾇ()Z

    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method

.method public static ﱡ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x14

    if-eqz p0, :cond_1e

    const/16 p0, 0x14

    goto :goto_20

    :cond_1e
    const/16 p0, 0x3f

    :goto_20
    if-eq p0, p1, :cond_23

    return-void

    :cond_23
    const/16 p0, 0x47

    :try_start_25
    div-int/lit8 p0, p0, 0x0
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    throw p0
.end method

.method public static ﺙ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ﻐ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ﻛ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x28

    if-nez v0, :cond_11

    const/16 v0, 0x28

    goto :goto_13

    :cond_11
    const/16 v0, 0x15

    :goto_13
    const/4 v2, 0x0

    invoke-static {p0, p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x39

    if-eqz v0, :cond_11

    const/16 v0, 0x39

    goto :goto_13

    :cond_11
    const/16 v0, 0x4d

    :goto_13
    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    invoke-static {p0, p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 8

    if-eqz p3, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    const-string v2, "\u4176"

    cmpl-float p2, v1, p2

    rsub-int p2, p2, 0x4ad5

    invoke-static {v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p3, p3, 0x71

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p3, p3, 0x2

    :cond_35
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->h()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5a

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_50

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_57
    throw v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    throw p0

    :cond_5a
    const/4 p0, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_60

    const/4 p4, 0x0

    goto :goto_61

    :cond_60
    const/4 p4, 0x1

    :goto_61
    if-eq p4, p3, :cond_95

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/m;->d()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object p4

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->DEBUG:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {p4, v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result p4

    if-eqz p4, :cond_71

    const/4 p4, 0x0

    goto :goto_72

    :cond_71
    const/4 p4, 0x1

    :goto_72
    if-eq p4, p3, :cond_95

    sget p4, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p4, p4, 0x19

    rem-int/lit16 v1, p4, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_81

    const/4 p0, 0x1

    :cond_81
    if-nez p0, :cond_8b

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_8b
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    throw p0

    :cond_95
    :goto_95
    return-void
.end method

.method public static ｋ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-static {p0, p0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eq v0, v2, :cond_1d

    const/16 p0, 0x2e

    :try_start_19
    div-int/2addr p0, v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p0

    throw p0

    :cond_1d
    :goto_1d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ｋ(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x1

    :goto_1d
    if-ne p0, p1, :cond_20

    return-void

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

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_17

    invoke-static {p0, p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1a

    :cond_17
    invoke-static {p0, p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1a
    return-void
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {p0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_16

    goto :goto_19

    :cond_16
    const/16 p0, 0x8

    :try_start_18
    div-int/2addr p0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_24

    :goto_19
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_24
    move-exception p0

    throw p0
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {p0, p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_2a

    const/16 p0, 0x1f

    :try_start_26
    div-int/2addr p0, v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    throw p0

    :cond_2a
    return-void
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {p0, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    if-ne v0, v1, :cond_20

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void

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

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    if-nez v0, :cond_11

    const/16 v0, 0x2f

    goto :goto_13

    :cond_11
    const/16 v0, 0x20

    :goto_13
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eq v0, v1, :cond_1a

    goto :goto_1e

    :cond_1a
    const/16 p0, 0x38

    :try_start_1c
    div-int/lit8 p0, p0, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/m;->c:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5b

    if-eqz v0, :cond_11

    const/16 v0, 0x5b

    goto :goto_13

    :cond_11
    const/16 v0, 0x2e

    :goto_13
    const/4 v2, 0x0

    invoke-static {p0, p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
