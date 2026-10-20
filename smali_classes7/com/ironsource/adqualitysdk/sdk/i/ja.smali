###### Class com.json.adqualitysdk.sdk.i.ja (com.ironsource.adqualitysdk.sdk.i.ja)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ja;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/ja; = null

.field private static b:J = -0x9251bcb5c03815aL

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/RelativeLayout;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ie;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f:Ljava/util/Map;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ie;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ie;-><init>(IIJJ)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->g:Lcom/ironsource/adqualitysdk/sdk/i/ie;

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-nez v0, :cond_11

    const/16 v0, 0x60

    goto :goto_13

    :cond_11
    const/16 v0, 0x36

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_22

    :try_start_16
    div-int v0, v2, v2
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_20

    if-nez p1, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_74

    goto :goto_2d

    :catchall_20
    move-exception p0

    throw p0

    :cond_22
    const/16 v0, 0x50

    if-nez p1, :cond_29

    const/16 v1, 0x50

    goto :goto_2b

    :cond_29
    const/16 v1, 0x22

    :goto_2b
    if-eq v1, v0, :cond_74

    :goto_2d
    move-object v0, p1

    :goto_2e
    if-eqz p1, :cond_73

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/16 v3, 0x41

    if-ne v1, p0, :cond_3b

    const/16 v4, 0x11

    goto :goto_3d

    :cond_3b
    const/16 v4, 0x41

    :goto_3d
    if-eq v4, v3, :cond_53

    if-ne v0, p1, :cond_52

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4e

    return-object p1

    :cond_4e
    const/4 p0, 0x0

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    throw p0

    :cond_52
    return-object v0

    :cond_53
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_73

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6c

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x13

    :try_start_68
    div-int/2addr v1, v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6a

    goto :goto_6f

    :catchall_6a
    move-exception p0

    throw p0

    :cond_6c
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :goto_6f
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_2e

    :cond_73
    return-object p1

    :cond_74
    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ja$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    monitor-enter p0

    :try_start_e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_31

    const v1, 0x9951914

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;

    invoke-direct {v2, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;-><init>(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/MotionEvent;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->o(Landroid/view/MotionEvent;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    if-eq v0, v1, :cond_20

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

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

.method private static e(Landroid/view/ViewGroup;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_61

    if-nez v1, :cond_12

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    :cond_12
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v1, v2, :cond_28

    const/16 v2, 0x5e

    goto :goto_2a

    :cond_28
    const/16 v2, 0x1e

    :goto_2a
    const/4 v4, 0x1

    if-eq v2, v3, :cond_60

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_61

    const/16 v3, 0x59

    if-nez v2, :cond_3a

    const/16 v2, 0x23

    goto :goto_3c

    :cond_3a
    const/16 v2, 0x59

    :goto_3c
    if-eq v2, v3, :cond_5d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v1, p0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    if-eqz v4, :cond_5c

    const/16 p0, 0x47

    :try_start_58
    div-int/2addr p0, v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5a

    return v0

    :catchall_5a
    move-exception p0

    throw p0

    :cond_5c
    return v0

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_60
    return v4

    :catchall_61
    move-exception p0

    const v1, 0xa510

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u7ee1\udbdb\u34eb\u91f7\uea83\u479f\ua094\ufdbe\u565b\ub35c\u0c64\u6951\uc203\u1f08\u783c\ud53c\u2fd8\u88e2\ue5e6\u3eb6\u9b97\uf4b1\u51a6\uaa48\u075d\u606a"

    const-string v7, "\u7ee3\u995d\ub1c6\uc852\ue0f0\ufb2b\u13f3\u2a71\u428b\u5d14\u7597\u8c2c\ua4a4\ubf34\ud7f8\uefc8\u0650\u1e9f\u3952\u51e4\u6877\u80ec\u9b27\ub39b\uca11\ue2b2\ufd3c\u15f5\u2c39\u444c\u5cc6\u7745\u8fe7\ua666\ubefa\ud96e\uf1c2\u0804\u209e\u3b15\u53b7\u6a77\u8288\u9ac0\ub552\ucdc7\ue46e\ufce8\u1773\u2fe8\u4617"

    cmp-long v8, v2, v4

    add-int/2addr v8, v1

    invoke-static {v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const v2, 0xe789

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private f(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ja$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x29

    if-eqz p1, :cond_27

    const/16 p1, 0x54

    goto :goto_29

    :cond_27
    const/16 p1, 0x29

    :goto_29
    if-eq p1, p2, :cond_30

    const/4 p1, 0x0

    :try_start_2c
    div-int/2addr p1, p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p1

    throw p1

    :cond_30
    return-void
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/ja;Lcom/ironsource/adqualitysdk/sdk/i/ie;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-nez v0, :cond_11

    const/16 v0, 0x38

    goto :goto_13

    :cond_11
    const/16 v0, 0x26

    :goto_13
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->q(Lcom/ironsource/adqualitysdk/sdk/i/ie;)V

    if-eq v0, v1, :cond_19

    return-void

    :cond_19
    const/4 p0, 0x0

    :try_start_1a
    throw p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p0

    throw p0
.end method

.method static synthetic h(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->p(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    if-eq v0, v1, :cond_20

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

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

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->k(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-void
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ja;->b:J

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

.method private k(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    const/4 v2, 0x1

    :goto_7
    if-eq v2, v1, :cond_6d

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_6d

    :cond_1a
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻛ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/jj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ﻛ(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/jj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jj;->ｋ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_6d

    :cond_3a
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    const v0, 0x9951914

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x5a

    if-nez v0, :cond_52

    const/16 v0, 0x1a

    goto :goto_54

    :cond_52
    const/16 v0, 0x5a

    :goto_54
    if-eq v0, v1, :cond_6d

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_66

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->b(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_66
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->b(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    :try_start_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    throw p1

    :cond_6d
    :goto_6d
    return-void
.end method

.method private l(Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-nez p1, :cond_17

    return-object v0

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

.method static synthetic m(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_21

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->l(Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_21
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->l(Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;

    const/4 p0, 0x0

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    throw p0
.end method

.method static synthetic n(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    const/16 v0, 0x4d

    add-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x4

    if-nez p1, :cond_1e

    const/4 p1, 0x4

    goto :goto_20

    :cond_1e
    const/16 p1, 0x50

    :goto_20
    if-eq p1, v1, :cond_23

    return-object p0

    :cond_23
    :try_start_23
    div-int/lit8 v0, v0, 0x0
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception p0

    throw p0
.end method

.method private o(Landroid/view/MotionEvent;)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja$f;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_17
    move-exception p1

    const v0, 0xa511

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    const-string v3, "\u7ee1\udbdb\u34eb\u91f7\uea83\u479f\ua094\ufdbe\u565b\ub35c\u0c64\u6951\uc203\u1f08\u783c\ud53c\u2fd8\u88e2\ue5e6\u3eb6\u9b97\uf4b1\u51a6\uaa48\u075d\u606a"

    const-string v4, "\u7ee3\ua421\ucb3e\uee16\u1500\u384f\u5f7f\u8270\ua97a\ucc4f\uf35d\u164f\u3dbd\u60f7\u87b4\uaa92\ud183\uf480\u1bf4\u3ea9\u65f0\u88de\uafdf\ud2fd\uf87e\u1f24\u4236\u6951\u8c18\ub306\ud667\ufd54"

    cmpl-float v1, v2, v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const v1, 0xdaf5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static p(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jp;->ﻐ(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private declared-synchronized q(Lcom/ironsource/adqualitysdk/sdk/i/ie;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_16

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->g:Lcom/ironsource/adqualitysdk/sdk/i/ie;

    goto :goto_1b

    :cond_16
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->g:Lcom/ironsource/adqualitysdk/sdk/i/ie;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1f

    const/16 p1, 0xb

    :try_start_1a
    div-int/2addr p1, v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ja;
    .registers 3

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    if-nez v1, :cond_22

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v1, v1, 0x2

    :cond_22
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized ｋ()Lcom/ironsource/adqualitysdk/sdk/i/ie;
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x54

    if-nez v0, :cond_12

    const/16 v0, 0x1b

    goto :goto_14

    :cond_12
    const/16 v0, 0x54

    :goto_14
    const/4 v3, 0x0

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->g:Lcom/ironsource/adqualitysdk/sdk/i/ie;

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_34

    const/16 v2, 0x2f

    if-eqz v1, :cond_28

    const/16 v1, 0x2c

    goto :goto_2a

    :cond_28
    const/16 v1, 0x2f

    :goto_2a
    if-ne v1, v2, :cond_2e

    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_34

    :cond_31
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    :try_start_33
    throw v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ﾇ()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ja$c;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ja$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V

    :cond_1f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_37

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    if-ne v0, v1, :cond_33

    monitor-exit p0

    return-void

    :cond_33
    const/4 v0, 0x0

    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    :try_start_36
    throw v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ﾒ()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    if-eqz v0, :cond_67

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    goto :goto_32

    :cond_31
    const/4 v3, 0x1

    :goto_32
    if-eq v3, v5, :cond_19

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_42

    const/4 v3, 0x0

    goto :goto_43

    :cond_42
    const/4 v3, 0x1

    :goto_43
    if-eq v3, v5, :cond_50

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_69

    const/16 v1, 0x24

    :try_start_4c
    div-int/2addr v1, v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4e

    goto :goto_19

    :catchall_4e
    move-exception v0

    :try_start_4f
    throw v0

    :cond_50
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_19

    :cond_56
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja;->e:Lcom/ironsource/adqualitysdk/sdk/i/jh;
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_69

    :cond_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method
