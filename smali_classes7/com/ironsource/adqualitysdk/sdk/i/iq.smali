###### Class com.json.adqualitysdk.sdk.i.iq (com.ironsource.adqualitysdk.sdk.i.iq)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/iq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:C = '\u0000'

.field private static c:C = '\u0000'

.field private static d:C = '\u0000'

.field private static e:C = '\u0000'

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/ix;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/ir;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->i()V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x46

    const-string v2, "\ue69e\u83e5\u7ba9\ud431\ud02c\ud94b\u8696\u650d\u63e9\ue2b2\u4005\ud433\u556c\u87b1\u4356\u0c4c\uc6b5\ufeca\ue533\u2e4e\u92c5\ubf18\uf14b\u0557\uc043\u9116\u07fa\uaf37\u7e89\u9cd5\u05c6\ufc1c\u78ee\ucd5e\u2c50\ud2fc\u367f\u5f7f\u29f2\u43df\ua585\u44c5\u83fd\ua2f7\u9a4c\ue96c\uda92\uf5ed\u56d2\u9c72\u59fa\ud653\uce4b\ue857\u0911\ube3a\u3f33\u25ea\u39f1\u4332\uf9c1\u0091\uab1a\u82e6\u17c8\u07eb\u494c\u24ee\u44e5\udb9a"

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->a:Ljava/lang/String;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x1

    :goto_27
    if-ne v1, v2, :cond_2a

    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ir;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->k:Ljava/util/List;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ix;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x18

    const-string v2, "\u3a3f\u20ee\u99ee\udcb8\u9a4c\ue96c\u99ee\udcb8\ud795\u8afc\u03d2\uf9db\u6d18\u6d40\uf77b\u9f2a\ud90d\u6bdd\u8266\u5e7b\u1e8d\u4237\uceaa\ud2a1"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x11

    const-string v3, "\u0a30\u4dff\u6a0d\u9e0a\u2ae5\u130f\ud4f9\u4e3e\udd54\uae18\ud90d\u6bdd\u526e\u4e0a\u0c40\ud68d\ua392\u12e6"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->h:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->i:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->j:Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object p1

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/iq$a;

    invoke-direct {p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iq$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/aq;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x26

    if-eqz v1, :cond_1b

    const/16 v1, 0x26

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x23

    :goto_1d
    if-eq v1, v2, :cond_20

    return-object v0

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    throw v0
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/iq;->e:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/iq;->c:C

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

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->k:Ljava/util/List;

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_22

    const/16 v1, 0x49

    :try_start_1e
    div-int/2addr v1, v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    move-exception p0

    throw p0

    :cond_22
    return-object p0
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ir;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->i:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    throw p0
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->j:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_23

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-ne v1, v2, :cond_1f

    monitor-exit p0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    if-eq v0, v2, :cond_1c

    const/16 p0, 0x52

    :try_start_18
    div-int/2addr p0, v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception p0

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private g(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 14

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ﻐ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v4, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    neg-int v2, v2

    const-string v3, "\ubbae\ucab9"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ｋ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->h:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﾒ()I

    move-result v2

    int-to-long v9, v2

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/iw;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ｋ(Ljava/lang/String;JLcom/ironsource/adqualitysdk/sdk/i/ix$e;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x11

    if-nez p1, :cond_5b

    const/16 p1, 0x11

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x1

    :goto_5c
    if-eq p1, p2, :cond_5f

    return-void

    :cond_5f
    const/4 p1, 0x0

    :try_start_60
    throw p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    throw p1
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/iq;)Lcom/ironsource/adqualitysdk/sdk/i/ix;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x24

    if-eqz v0, :cond_11

    const/16 v0, 0x24

    goto :goto_13

    :cond_11
    const/16 v0, 0x14

    :goto_13
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->h:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    if-eq v0, v1, :cond_18

    return-object p0

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

.method static i()V
    .registers 1

    const v0, 0xb7e3

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->d:C

    const v0, 0xd8d0

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->c:C

    const v0, 0xd125

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->e:C

    const/16 v0, 0xe6a

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->b:C

    return-void
.end method


# virtual methods
.method public final ﾇ(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/iq;->f:I

    add-int/lit8 p2, p2, 0x27

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_17

    const/4 p2, 0x1

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-nez p2, :cond_1b

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ﾇ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ﾒ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_40

    :cond_15
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/iw;->ｋ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_1b
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﺙ()Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->k:Ljava/util/List;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;

    invoke-direct {v3, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iq$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_3d

    if-eqz v1, :cond_36

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/iq;->g(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V

    :cond_36
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq;->h:Lcom/ironsource/adqualitysdk/sdk/i/ix;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾇ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_40
    :goto_40
    const/4 p1, 0x0

    return-object p1
.end method
