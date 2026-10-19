###### Class com.json.adqualitysdk.sdk.i.t (com.ironsource.adqualitysdk.sdk.i.t)
.class public Lcom/ironsource/adqualitysdk/sdk/i/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/os/Handler; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:C = '\u0000'

.field private static f:I = 0x0

.field private static g:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->b()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->a:Landroid/os/Handler;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_33

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    if-ne v0, v4, :cond_30

    return v3

    :cond_30
    :try_start_30
    throw v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    throw v0

    :cond_33
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2f

    if-eqz v0, :cond_44

    const/16 v0, 0x2f

    goto :goto_46

    :cond_44
    const/16 v0, 0x34

    :goto_46
    if-eq v0, v2, :cond_49

    return v4

    :cond_49
    :try_start_49
    throw v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    throw v0

    :cond_4c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    :try_start_52
    throw v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    throw v0
.end method

.method static b()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->c:J

    const/4 v0, 0x0

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->d:I

    const v0, 0x80a3

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->e:C

    return-void
.end method

.method private static c(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    :cond_6
    check-cast p3, [C

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_e
    check-cast p2, [C

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_16
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    const/4 v1, 0x0

    aget-char v2, p1, v1

    xor-int/2addr p0, v2

    int-to-char p0, p0

    aput-char p0, p1, v1

    const/4 p0, 0x2

    aget-char v2, p2, p0

    int-to-char p4, p4

    add-int/2addr v2, p4

    int-to-char p4, v2

    aput-char p4, p2, p0

    array-length p0, p3

    new-array p4, p0, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p0, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p1, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p2, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p1, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p2, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p2, v3

    aput-char v1, p1, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p3, v1

    aget-char v3, p1, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/t;->c:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/t;->d:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/t;->e:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p4}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->a()Z

    move-result v0

    const/16 v1, 0x31

    if-eqz v0, :cond_b

    const/16 v0, 0x9

    goto :goto_d

    :cond_b
    const/16 v0, 0x31

    :goto_d
    if-eq v0, v1, :cond_21

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;->run()V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x4a

    if-eqz p0, :cond_35

    const/16 p0, 0x4a

    goto :goto_37

    :cond_35
    const/16 p0, 0x17

    :goto_37
    if-eq p0, v0, :cond_3a

    return-void

    :cond_3a
    const/4 p0, 0x0

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    throw p0
.end method

.method public static ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ｋ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x45

    if-nez p0, :cond_22

    const/16 p0, 0x40

    goto :goto_24

    :cond_22
    const/16 p0, 0x45

    :goto_24
    if-ne p0, p1, :cond_27

    return-void

    :cond_27
    const/4 p0, 0x0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0
.end method

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x60

    if-eqz v0, :cond_11

    const/16 v0, 0x60

    goto :goto_13

    :cond_11
    const/16 v0, 0x29

    :goto_13
    if-eq v0, v1, :cond_1d

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ｋ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :cond_1d
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ｋ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 p0, 0x39

    :try_start_26
    div-int/lit8 p0, p0, 0x0
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_29

    :goto_28
    return-void

    :catchall_29
    move-exception p0

    throw p0
.end method

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x47

    if-eqz p0, :cond_2a

    const/16 p0, 0x47

    goto :goto_2c

    :cond_2a
    const/16 p0, 0x49

    :goto_2c
    if-eq p0, p1, :cond_2f

    return-void

    :cond_2f
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    throw p0

    :cond_32
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    throw p0
.end method

.method public static ｋ()Landroid/os/Handler;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->a:Landroid/os/Handler;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_24

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_24
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    throw p0
.end method

.method public static ﾒ()Landroid/os/Handler;
    .registers 7

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/t;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->b:Landroid/os/Handler;

    if-nez v1, :cond_34

    new-instance v1, Landroid/os/HandlerThread;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    int-to-char v2, v2

    const-string v3, "\ua462\u32f9\u7780\uf330"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ub61a\u9ed8\ub65b\u7a77\u636b\u06a1\u9ba8\u98ba\uff42\u2170"

    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/t;->c(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/t;->b:Landroid/os/Handler;

    :cond_34
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->b:Landroid/os/Handler;

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_38

    return-object v1

    :catchall_38
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/t;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eq v0, v1, :cond_23

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->f:I

    add-int/2addr p0, v1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/t;->g:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;->run()V

    return-void
.end method
