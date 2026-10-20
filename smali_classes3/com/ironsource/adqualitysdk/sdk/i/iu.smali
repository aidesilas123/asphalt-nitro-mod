###### Class com.json.adqualitysdk.sdk.i.iu (com.ironsource.adqualitysdk.sdk.i.iu)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/iu;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/in;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->a()V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const-string v3, "\u382d\u914e\u3863\u24b8\ub285\ud9d7\u05c7\u2509\uee0e\u1ae3\uf39c\ud25f\u94c1\uf304\ua54f\ue83d\uba9b\ua95c\u5cec\u86f1\u6174\u9ffb\u76b6\u5c92"

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->a:Ljava/lang/String;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    if-eq v0, v2, :cond_2f

    const/16 v0, 0x17

    :try_start_2b
    div-int/2addr v0, v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    throw v0

    :cond_2f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->f:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e:Landroid/content/Context;

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->a:Ljava/lang/String;

    const-string v1, ""

    const/16 v2, 0x30

    invoke-static {v1, v2, v0, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    neg-int v0, v0

    const-string v1, "\u0578\u485c\u052b\ufdaa\u4892\u23c0\u343e\u14f3\ud35d\uc3ed\u0987\ue3d6\ua995\u2a07\u5f0c\ud9c0\u87ee\u7044\ua6f9\ub70a\u5c2b\u46fe\u8cb7\u6d6e\u2a24\uad21\ud255\u44a5\u00d5\uf36e\u380a\u3217\ud91e\ud9d5"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "\u6493\uc741\u64f2\u72bc\ue24b\u8909\u5b79\u7bb2\ub2b0\u4cf7\ua35d\u8c99\uc865\ua50f\uf581\ub6cd\ue614\uff59\u0c2f\ud841\u3d8d\uc9c1\u2652\u0215\u4ba1\u220b\u78aa\u2bd3\u6112\u7c4c\u92ec\u5d67\ub8de\u56b9\ua532\u8737\ud6b2\ua0fc\uff8a\ua8ee"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static a()V
    .registers 2

    const-wide v0, -0x2cb204be87104a6dL    # -1.9543465116952568E93

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b:J

    return-void
.end method

.method private declared-synchronized b()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/in;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_1b

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->f:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    const/16 p1, 0x47

    :try_start_17
    div-int/2addr p1, v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    :try_start_1a
    throw p1

    :cond_1b
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->f:Z

    :goto_1d
    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_27

    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static d(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_1d

    const/4 p0, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    const/16 v0, 0x36

    :try_start_18
    div-int/2addr v0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    return-object p0

    :catchall_1a
    move-exception p0

    throw p0

    :cond_1c
    return-object p0

    :cond_1d
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x33

    if-nez v2, :cond_2e

    const/16 v2, 0x42

    goto :goto_30

    :cond_2e
    const/16 v2, 0x33

    :goto_30
    const-string v4, "\uf21c\u5fc2\uf27f\uea3e\u8a1d\ue155\ue34e\uc399\u2435\ud47e\ucb1b\u34f5\u5ef2\u3d80\u9dd7\u0eb1"

    const-string v5, ""

    if-eq v2, v3, :cond_4e

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0

    :cond_4e
    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method private static e(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/iu;Z)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c(Z)V

    if-eq v0, v1, :cond_16

    return-void

    :cond_16
    const/4 p0, 0x0

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    throw p0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Z
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6b

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eq v2, v0, :cond_1a

    goto :goto_60

    :cond_1a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_60

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const/4 v5, 0x0

    const-string v6, "\u2b27\uc992\u2b69\u7c64\uf013\u9b41\u5b83\u7b4d\ufd04\u423f\ub10a\u8c68"

    const-string v7, "\u204a\uaba4\u206a\u1e54\ub572\ude3b\u386d\u18ba\uf668\u201e\uf463\uefcb\u8cb7\uc9eb\ua2e2"

    const-string v8, ""

    cmpl-float v4, v4, v5

    invoke-static {v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x30

    invoke-static {v8, p0, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    neg-int p0, p0

    invoke-static {v7, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_60
    :goto_60
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_6b
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    const/4 p0, 0x0

    :try_start_6f
    throw p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    throw p0
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/iu;Landroid/content/Context;)Z
    .registers 4

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    const/16 v0, 0xd

    add-int/2addr p0, v0

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->h(Landroid/content/Context;)Z

    move-result p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x2a

    if-nez p1, :cond_1f

    const/16 v0, 0x2a

    :cond_1f
    if-eq v0, v1, :cond_22

    return p0

    :cond_22
    const/4 p0, 0x0

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iu$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iu;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    const/4 p1, 0x1

    :goto_18
    if-eqz p1, :cond_1b

    return-void

    :cond_1b
    const/16 p1, 0x18

    :try_start_1d
    div-int/2addr p1, p2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method public final declared-synchronized ﻐ()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v1, v1, 0x2

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->f:Z

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v1

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﻛ()V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-eqz v1, :cond_28

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_28
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/in;

    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/in;->ﾇ()V

    goto :goto_12
.end method

.method public final declared-synchronized ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ｋ()V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v2, 0x45

    :try_start_17
    div-int/2addr v2, v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception v0

    throw v0

    :cond_1b
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-eq v2, v3, :cond_3f

    goto :goto_42

    :cond_3f
    const/16 v2, 0x1d

    :try_start_41
    div-int/2addr v2, v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_4d

    :goto_42
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_23

    :catchall_4d
    move-exception v0

    throw v0

    :cond_4f
    return-void
.end method

.method public final ﾒ()V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_22
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0
.end method

.method public final declared-synchronized ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iu;->d:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iu;->c:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_27

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x1

    :goto_1f
    if-eqz p1, :cond_23

    monitor-exit p0

    return-void

    :cond_23
    const/4 p1, 0x0

    :try_start_24
    throw p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    :try_start_26
    throw p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method
