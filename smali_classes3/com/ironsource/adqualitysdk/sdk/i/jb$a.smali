###### Class com.ironsource.adqualitysdk.sdk.i.jb.a (com.ironsource.adqualitysdk.sdk.i.jb$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jb$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/jb;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static d:C = '\u34c3'

.field private static e:C = '\uc295'

.field private static f:C = '\u09fb'

.field private static g:C = '\u3dd2'

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->f:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->g:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->e:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_1d

    const/16 v1, 0xa

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x3d

    :goto_1f
    if-eq v1, v2, :cond_22

    return-void

    :cond_22
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x6

    if-nez v1, :cond_31

    const/4 v1, 0x6

    goto :goto_32

    :cond_31
    const/4 v1, 0x7

    :goto_32
    if-eq v1, v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jc;->ﻛ(Landroid/app/Activity;)V

    goto :goto_12

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jc;->ﻛ(Landroid/app/Activity;)V

    const/4 p1, 0x0

    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    throw p1
.end method

.method private ﻛ(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a$a;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a$a;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x1

    :goto_1f
    if-ne p1, v0, :cond_22

    return-void

    :cond_22
    const/4 p1, 0x0

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    throw p1
.end method

.method private ﾒ(Landroid/app/Activity;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-eqz v0, :cond_11

    const/16 v0, 0x1f

    goto :goto_13

    :cond_11
    const/16 v0, 0x54

    :goto_13
    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2a

    :cond_1e
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x30

    :try_start_28
    div-int/lit8 v1, v1, 0x0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_4e

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_35

    const/16 v1, 0x26

    goto :goto_37

    :cond_35
    const/16 v1, 0x10

    :goto_37
    if-eq v1, v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jc;->ﾒ(Landroid/app/Activity;)V

    goto :goto_2a

    :cond_43
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_4e
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 10

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jb;

    :try_start_2
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3} :catch_2a

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->k:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_d

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->ﻛ(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_27

    :try_start_e
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p1

    const-string p2, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\u1b15\uf0ab\uc13d\u1d2d\u0176\u1bd7\u9428\u0cd1"

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    rsub-int/lit8 v2, v6, 0x1a

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_58

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v4, 0x23

    if-nez v2, :cond_2b

    const/16 v2, 0x23

    goto :goto_2d

    :cond_2b
    const/16 v2, 0x13

    :goto_2d
    if-eq v2, v4, :cond_39

    :try_start_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_13

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_42} :catch_58

    :try_start_42
    throw v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_58
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    throw p1

    :cond_45
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_52

    const/4 v0, 0x1

    :cond_52
    if-nez v0, :cond_55

    return-void

    :cond_55
    :try_start_55
    throw v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p1

    throw p1

    :catch_58
    move-exception p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1e

    const-string v2, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    const-string v3, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\ud2cd\u2613\ua394\uf392\u3ac4\u5e44\u3bc5\u966d\u9428\u0cd1"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_33

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v2, v2, 0x2

    :goto_13
    :try_start_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_33

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_32

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_33

    goto :goto_13

    :cond_32
    return-void

    :catch_33
    move-exception p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x1e

    const-string v2, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x19

    const-string v3, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\ufbe7\u1ef0\ucc67\u8e72\u06d6\ud583\ufec7\u9708"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->ﻛ(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_46

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v2, v2, 0x2

    :goto_16
    :try_start_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_46

    if-eqz v2, :cond_45

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eq v2, v3, :cond_38

    :try_start_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_16

    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_41} :catch_46

    const/4 p1, 0x0

    :try_start_42
    throw p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_46
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    throw p1

    :cond_45
    return-void

    :catch_46
    move-exception p1

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    const-string v2, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1a

    const-string v3, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\ud668\ua0f8\ua394\uf392\u31a5\ua5a5\u9428\u0cd1"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x24

    :try_start_c
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x60

    if-eqz v2, :cond_1f

    const/16 v2, 0x24

    goto :goto_21

    :cond_1f
    const/16 v2, 0x60

    :goto_21
    if-eq v2, v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_38

    goto :goto_14

    :cond_2d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catch_38
    move-exception p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0x1e

    const-string v1, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    invoke-static {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v0

    const-string v0, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\u66aa\u1a09\u96ba\uf2b3\u7693\u04e6\ua63f\u5246\u5ad4\ue50e\ud835\u7df0\u81a9\u4249\u5ad4\ue50e\udac0\uc92e"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->k:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->ﻛ(Landroid/app/Activity;)V

    :cond_7
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_5e

    :try_start_8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_5b

    :try_start_10
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_18

    :cond_28
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uf7ad\u779a\u6d1d\u5c7c\u45f4\ub83a\u4dbc\ub112\u48a6\ub658\u8817\u3a5f\uc8a5\uf43e\u24dc\ue06d\u02ec\u39ce\u45c8\u7373\u6ae9\u7b36\u8d1a\ua65b\u933a\u7a0e\u24dc\ue06d\u02ec\u39ce\u8116\u34c4\ueca9\u960e\u4fa2\ue547\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\ue931\u3306"

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2b

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    monitor-enter p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_45} :catch_5e

    :try_start_45
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->b:Z

    if-nez v0, :cond_55

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->ﾒ(Landroid/app/Activity;)V

    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0

    throw p1

    :cond_5a
    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p1

    const-string v0, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\u66aa\u1a09\u5ad4\ue50e\u0351\uab67\u9428\u0cd1"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1a

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/jc;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_9

    :cond_19
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->b:Z

    const/4 v1, -0x1

    monitor-enter p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_5e

    :try_start_21
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\uf7ad\u779a\u6d1d\u5c7c\u45f4\ub83a\u4dbc\ub112\u48a6\ub658\u8817\u3a5f\uc8a5\uf43e\u24dc\ue06d\u02ec\u39ce\u45c8\u7373\u6ae9\u7b36\u8d1a\ua65b\u933a\u7a0e\u24dc\ue06d\u02ec\u39ce\u8116\u34c4\ueca9\u960e\u4fa2\ue547\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\ue931\u3306"

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2b

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :cond_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_5b

    if-ltz v1, :cond_5a

    if-nez v1, :cond_5a

    :try_start_53
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->b:Z

    if-nez v1, :cond_5a

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->c(Landroid/app/Activity;)V

    :cond_5a
    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p1

    const-string v1, "\u2f55\u7e59\u4d42\u881d\uac49\ud9fd\u613e\u02db\u8dc5\ud21a\u2589\ufb4b\u69cb\ub24d\udb26\u7ed7\u4a95\uba7a\udac0\uc92e\u7e2d\ue732\u824d\u1436\u02ec\u39ce\u89b7\u047f\u82cf\ube29"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ub616\u3e3c\ude4f\ua3d5\u1d69\u3aac\u2d1c\uffad\ua88a\uc2a0\u54d3\ud885\ua06d\ue63e\u1b58\u4fa6\u4dbc\ub112\u66aa\u1a09\u6415\ubc7d\ue47c\ub280\u9428\u0cd1"

    const v3, 0x100001a

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final declared-synchronized ﻐ(Landroid/app/Application;Landroid/app/Activity;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->l:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1e

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->ﻛ(Landroid/app/Activity;)V

    monitor-enter p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1b

    goto :goto_1e

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0

    throw p1

    :cond_1e
    :goto_1e
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﻛ()Landroid/app/Activity;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5c

    const/4 v2, 0x1

    if-nez v0, :cond_12

    const/16 v0, 0x5c

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    const/4 v3, 0x0

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2d

    const/4 v2, 0x0

    :cond_2d
    if-eqz v2, :cond_30

    return-object v0

    :cond_30
    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    throw v0

    :cond_33
    return-object v3

    :cond_34
    :try_start_34
    throw v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    throw v0
.end method

.method public final declared-synchronized ｋ()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x6

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_2d

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->i:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->h:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    monitor-exit p0

    return v2

    :cond_2d
    monitor-exit p0

    return v1

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_38

    const/4 v0, 0x0

    :try_start_35
    throw v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    :try_start_37
    throw v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method
