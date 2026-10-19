###### Class com.json.adqualitysdk.sdk.i.fx (com.ironsource.adqualitysdk.sdk.i.fx)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\u387a'

.field private static d:I = 0x0

.field private static e:I = 0x1


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

.method private static a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/fx;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/fx;->c:C

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
.method public final ﻐ()Ljava/lang/Class;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_22

    const/16 v1, 0x60

    :try_start_1e
    div-int/2addr v1, v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v0

    throw v0

    :cond_22
    return-object v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v3, "\ubdef\u4600\ua44d\u7145\u00db\u3f54\ua60f\u6b4c\u8027\ub226\ude18\u89ed\uc8bd\u664b\u6741\ud2e1\u239e\uad8a\u879c\ue629\u34d7\ubaba\u6bc3\u5053\u932e\u6a34\u2dbe\ua9fe\u68ed\u9c09\uc698\u5ef9\u3615\u48bb\ucf76\ufaa3\ud0b9\u892e\u29b4\ubb74\ua432\ube70\ud3dc\u6e75\ufb38\u0890\u3547\u0562\u7c4e\uf418\u0e4f"

    const v4, -0xa9f61b1

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u50a7\u609e\u33f5\u598c"

    if-eq v0, v1, :cond_33

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v0

    int-to-byte v0, v0

    sub-int/2addr v4, v0

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    int-to-char v0, v0

    invoke-static {v6, v5, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_33
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v0

    int-to-byte v0, v0

    shr-int v0, v4, v0

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v1, v1, v4

    int-to-char v1, v1

    invoke-static {v6, v5, v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :goto_48
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x4c

    if-nez v1, :cond_59

    const/16 v1, 0x15

    goto :goto_5b

    :cond_59
    const/16 v1, 0x4c

    :goto_5b
    if-eq v1, v3, :cond_63

    const/16 v1, 0x2a

    :try_start_5f
    div-int/2addr v1, v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_61

    return-object v0

    :catchall_61
    move-exception v0

    throw v0

    :cond_63
    return-object v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 9

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xde62

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    sub-int/2addr v2, v3

    int-to-char v2, v2

    const-string v3, "\uf82f\u5019\u6382\u9dde"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ua05f\u69fe\ued73\u8e42\ue2b3\ub068\udf2e\u1a0b\u411c\u8446\u931f\u31f5\u1f83\u2589\u4a73\u14ba\u685a\uc8a6\ud59e\u8a66\u3313\u0082\u4199\u6919\u5132\ubece"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6191166d

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/2addr v5, v2

    const v2, 0x9eb6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v2

    int-to-char v2, v6

    const-string v6, "\u6d65\u9116\ub661\uf69e"

    const-string v7, "\u48bc\u5516\u8d9f"

    invoke-static {v6, v4, v5, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v3, 0x1

    :goto_51
    if-eqz v3, :cond_54

    return-object v0

    :cond_54
    const/4 v0, 0x0

    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    throw v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 7

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bf;

    const v1, 0x40e61fdb

    const-string v2, ""

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    const v2, 0xc5e6

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    int-to-char v2, v2

    const-string v3, "\udcfd\ue61f\ue640\u03c5"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ufd05\u3aa8\ubef0\u6d7f\ud4da\uf0d0\u4432\uc3ed\u6034\ucdb1\u17b5\u975f\uc275\u4d29\uaefa"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bf;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x33

    if-nez v1, :cond_39

    const/16 v1, 0x33

    goto :goto_3b

    :cond_39
    const/16 v1, 0xe

    :goto_3b
    if-eq v1, v2, :cond_3e

    return-object v0

    :cond_3e
    const/16 v1, 0x30

    :try_start_40
    div-int/lit8 v1, v1, 0x0
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_43

    return-object v0

    :catchall_43
    move-exception v0

    throw v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v0, v0, 0x2

    const v0, 0x40e61fdc

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/2addr v2, v0

    const v0, 0xc5e6

    const-string v3, ""

    invoke-static {v3, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-char v0, v0

    const-string v1, "\udcfd\ue61f\ue640\u03c5"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\ufd05\u3aa8\ubef0\u6d7f\ud4da\uf0d0\u4432\uc3ed\u6034\ucdb1\u17b5\u975f\uc275\u4d29\uaefa"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fx;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fx;->d:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fx;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
