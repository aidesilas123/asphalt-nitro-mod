###### Class com.json.adqualitysdk.sdk.i.al (com.ironsource.adqualitysdk.sdk.i.al)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/al;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[C = null

.field private static b:C = '\u0006'

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Z

.field private final g:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->a:[C

    const-wide v0, 0x1c8929b914971b50L    # 3.255626346410216E-171

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->c:J

    return-void

    nop

    :array_12
    .array-data 2
        0x49s
        0x72s
        0x6fs
        0x6es
        0x53s
        0x75s
        0x63s
        0x65s
        0x43s
        0x73s
        0x74s
        0x6ds
        0x4ds
        0x64s
        0x69s
        0x61s
        0x52s
        0x76s
        0x27s
        0x20s
        0x3as
        0x68s
        0x6cs
        0x62s
        0x2ds
        0x67s
        0x70s
        0x79s
        0x4as
        0x4bs
        0x4cs
        0x4es
        0x4fs
        0x50s
        0x51s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/al$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/al$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/al;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    return-void
.end method

.method private static a(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->a:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/al;->b:C

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

.method private static b(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->ADMOB:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne p0, v0, :cond_3e

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 p0, p0, 0x2

    const-string v0, "\u0010\u000e\u0008\u0005\u00b9"

    if-nez p0, :cond_27

    const/16 p0, 0x4c

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    ushr-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x7a

    mul-int/lit8 v1, v1, 0x4

    goto :goto_35

    :cond_27
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x57

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x5

    :goto_35
    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->DT_FAIR_BID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-wide/16 v4, 0x0

    if-ne p0, v0, :cond_5d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p0

    const-string v0, "\u7a03\u856b\ub597\uff6c\u7a65\u9e5a\u835e\uaeee\u1721\u0d92\u1613"

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->HELIUM:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_74

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x14

    shr-int/lit8 p0, p0, 0x6

    const-string v0, "\uc565\u40ac\u68a3\u9799\uc50d\u5b99\u5e6f\uc600\ua850\uc851"

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_74
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_96

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x14

    shr-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x58

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    rsub-int/lit8 v0, v0, 0xa

    const-string v1, "\u000b\u0003\u0019\u0008\u0003\u0007\u0003\u0004\u000c\u0008"

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_96
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->MAX:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_9c

    const/4 v0, 0x0

    goto :goto_9d

    :cond_9c
    const/4 v0, 0x1

    :goto_9d
    if-eq v0, v1, :cond_c4

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    shr-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x2

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    const-string v2, "\u000e\u001b\u001c\u0014\u0005\u000e\u000f\u0002"

    cmp-long v3, v0, v4

    rsub-int/lit8 v0, v3, 0x9

    invoke-static {p0, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c4
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNITY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v1, ""

    if-ne p0, v0, :cond_ec

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x7a

    int-to-byte p0, p0

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const-string v1, "\u0000\u0004\u0010\u0008!\u0015\u000f\u0007"

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ec
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->SELF_MEDIATED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_ff

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result p0

    const-string v0, "\ud18f\ubbae\ubfe4\udea9\ud1fc\ua09b\u8928\u8f3f\ubca2\u335b\u1c60\u61f0\u0b6e\u4e0a\uaea1\uf2bd"

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ff
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->OTHER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    if-ne p0, v0, :cond_106

    const/16 p0, 0x10

    goto :goto_108

    :cond_106
    const/16 p0, 0x16

    :goto_108
    if-eq p0, v2, :cond_124

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x23

    if-eqz p0, :cond_11b

    const/16 p0, 0x23

    goto :goto_11d

    :cond_11b
    const/16 p0, 0xe

    :goto_11d
    if-eq p0, v0, :cond_120

    return-object v1

    :cond_120
    const/4 p0, 0x0

    :try_start_121
    throw p0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_122

    :catchall_122
    move-exception p0

    throw p0

    :cond_124
    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x15

    int-to-byte p0, p0

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const-string v1, "\u0004\u0008\u0013\t\u0087"

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    if-nez v1, :cond_11

    const/16 v1, 0x3b

    goto :goto_13

    :cond_11
    const/16 v1, 0x17

    :goto_13
    const/4 v3, 0x0

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    if-ne v1, v2, :cond_2b

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-nez v0, :cond_28

    return-object p0

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :cond_2b
    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    throw p0
.end method

.method private d(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_f3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "\u0001\u0002\u0003\u0004\u0005\u0003\u0000\u0002\u0007\u0008\u000b\u0002\n\u000b\u0005\u0008\r\u0006\u000e\u000f\u0010\t\u0014\u0008\u0004\u000f\u000b\r\t\u0001\u0001\u000b"

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getRevenue()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eq v1, v4, :cond_2e

    goto :goto_77

    :cond_24
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getRevenue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_77

    :cond_2e
    const/16 p1, 0x30

    invoke-static {v3, p1, v0, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    add-int/lit8 p1, p1, 0x6d

    int-to-byte p1, p1

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    invoke-static {p1, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x50

    int-to-byte v1, v1

    invoke-static {v3, v3, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x43

    const-string v3, "\t\u000e\u0000\u0015\u0007\u0016\n\u0008\u0001\u000f\u0012\u0007\u0003\u000b\u0008\u0004\u0007\u0017\u0006\u0008\u000e\u000f\u0010\t\u0014\u0008\u0001\u0015\u0007\r\r\u000b\u0004\u0000\u0008\u0013\u0019\u0007\u000b\r\t\u0001\u0001\u000b\u0015\u0007\u0014\u0003\u0004\u0017\u0013\u0019\u0013\u000b\u0015\u0001\u0003\u0004\u001b\u0000\r\u001f\u0010\t\u000f\u000c\u00b5"

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6f

    const/4 p1, 0x1

    goto :goto_70

    :cond_6f
    const/4 p1, 0x0

    :goto_70
    if-eq p1, v4, :cond_73

    return v0

    :cond_73
    const/4 p1, 0x0

    :try_start_74
    throw p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    throw p1

    :cond_77
    :goto_77
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getMediationNetwork()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->j(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Z

    move-result v1

    if-nez v1, :cond_83

    const/4 v1, 0x0

    goto :goto_84

    :cond_83
    const/4 v1, 0x1

    :goto_84
    if-eq v1, v4, :cond_b1

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x6c

    int-to-byte p1, p1

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v1, "\u8bf3\u8109\ud19b\u768f\u8bb0\u9a38\ue755\u2758\ue6c7\u09b9\u7208\uc9da\u511d\u74bd\uc09b\u5a9c\ucc46\ue26a\uaf8f\uef50\u3e9e\u5179\u3a56\u701a\ua9d7\ubcf0\u891a\u02cb\u041a\u2bb6\u17d5\u97df\u7741\u997c\ue28d\u385a\ue19d\u042c\u715e\ucd45\u5c93\u73f4\udc12\u5fcc\ucf00\udeb0\uaad5\ue098\u3a13\u4c74\u399e\u755b\u949a\ubb38\u844f\u0616\u07dc\u26f7\u135b\ua8d1\u7216\u95ad\ue1cc\u3d90\ued41\u0372"

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x1f

    invoke-static {p1, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/al;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b1
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getAdType()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->h(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;)Z

    move-result p1

    if-nez p1, :cond_f2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x6c

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x20

    invoke-static {p1, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const-string v2, "\ue1d6\u38d1\ud870\u5b8e\ue195\u23e0\ueebe\u0a59\u8ce2\ub061\u7be3\ue4db\u3b38\ucd65\uc970\u779d\ua663\u5bb2\ua664\uc251\u54bb\ue8a1\u33bd\u5d1b\uc3f2\u0528\u80f1\u2fca\u6e3f\u926e\u1e3e\ubade\u1d64\u20a4\ueb66\u155b\u8bb8\ubdf4\u78b5\ue044\u36b6\uca32\ud5e5\u72ce\ua526\u676e\ua322\ucd8a\u5073\uf5a5\u3030\u585f\ufeb2\u02a1\u8da4\u2b07\u6de6\u9f24\u1ae3\u859e\u1837\u2c73\ue835\u10de\u877f\ubaaf\u4564\ue35b\u35a4\ud7f2\ud2a4\u7e17\ua0e2\u6428\uaff1\uc8d2\u4f7a\uf121\u3d26\u5b97\ufa72\u0fa4\u8a7f\u3612\u68f6\u9cf3\u67b5\u8109\u17f7\u2933\uf4f4\u13db\u8232\u4621\u4226\uee97\u3172\ud4a4\udf7f\u791e\udfb7\u61ef\uacb4\ud45e\u4ae4\ufe24\u39e7\ua6df\uf924\u0b65\u9735\u319a"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p1, p1, 0x2

    return v0

    :cond_f2
    return v4

    :cond_f3
    return v0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v0, v0, 0x2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->f:Z

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-eq v1, v0, :cond_23

    const/16 v0, 0xa

    :try_start_1f
    div-int/2addr v0, p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception p0

    throw p0

    :cond_23
    return p1
.end method

.method private static f(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->c:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/al;->c:J

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

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;
    .registers 3

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    if-eqz p0, :cond_17

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->i(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_1e

    :cond_17
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->i(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0xc

    :try_start_1d
    div-int/2addr p1, v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    :goto_1e
    return-object p0

    :catchall_1f
    move-exception p0

    throw p0
.end method

.method private static h(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;)Z
    .registers 5

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->INTERSTITIAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_36

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    if-eq p0, v0, :cond_36

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED_VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const/16 v3, 0x3f

    if-eq p0, v0, :cond_22

    const/16 v0, 0x33

    goto :goto_24

    :cond_22
    const/16 v0, 0x3f

    :goto_24
    if-eq v0, v3, :cond_36

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    if-ne p0, v0, :cond_2b

    goto :goto_36

    :cond_2b
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method private static i(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dd;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ｋ(Z)V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getRevenue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﻐ(Ljava/lang/Double;)V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getMediationNetwork()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->b(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﾇ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;->getPlacement()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ｋ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dd;->ﻛ()Lorg/json/JSONObject;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-eqz v0, :cond_3b

    const/16 v0, 0x4b

    goto :goto_3d

    :cond_3b
    const/16 v0, 0xb

    :goto_3d
    if-eq v0, v1, :cond_40

    return-object p0

    :cond_40
    const/4 p0, 0x0

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    throw p0
.end method

.method private static j(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    const/4 v2, 0x1

    :goto_11
    if-eqz v2, :cond_14

    goto :goto_32

    :cond_14
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->b(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v2, 0x40

    if-nez p0, :cond_23

    const/16 p0, 0x59

    goto :goto_25

    :cond_23
    const/16 p0, 0x40

    :goto_25
    if-eq p0, v2, :cond_32

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_32
    :goto_32
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 p0, p0, 0x2

    return v0
.end method

.method static synthetic k(Lcom/ironsource/adqualitysdk/sdk/i/al;)Z
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al;->f:Z

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x5a

    if-nez v1, :cond_1b

    const/16 v1, 0x5a

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x24

    :goto_1d
    if-eq v1, v0, :cond_20

    return p0

    :cond_20
    const/16 v0, 0x16

    :try_start_22
    div-int/lit8 v0, v0, 0x0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    return p0

    :catchall_25
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
    .registers 5
    .param p1    # Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_34

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->d(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/al$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻏ()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/al;->d:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/al;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_33
    return-void

    :cond_34
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/al;->d(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Z

    const/4 p1, 0x0

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.al.a (com.ironsource.adqualitysdk.sdk.i.al$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/al$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/je;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/al;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/al;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/al;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/je;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/al$a;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.al.a.C0336a (com.ironsource.adqualitysdk.sdk.i.al$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/al$a;->onActivityDestroyed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:I = 0x12767962

.field private static e:I = 0x1

.field private static f:I = 0x6c85df4f

.field private static g:[B = null

.field private static h:[S = null

.field private static i:I = 0x0

.field private static j:I = 0x1


# instance fields
.field private synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/al$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->g:[B

    return-void

    :array_a
    .array-data 1
        0x17t
        -0x73t
        -0x71t
        0x61t
        0x7at
        0x77t
        0x7dt
        0x7at
        -0x52t
        0x51t
        -0x77t
        0x78t
        0x75t
        -0x7bt
        -0x4ft
        0x3ct
        0x7bt
        -0x7et
        0x71t
        -0x71t
        0x74t
        -0x7ft
        0x7bt
        0x74t
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/al$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/al$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->e:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->g:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->d:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->h:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->d:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->d:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->f:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->g:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->h:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/al$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->k(Lcom/ironsource/adqualitysdk/sdk/i/al;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eq v0, v1, :cond_6a

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->j:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->i:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/al$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, -0x2

    const v3, -0x6c85dee2

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    add-int/2addr v4, v3

    const/high16 v3, 0x1000000

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    add-int/2addr v5, v3

    int-to-byte v3, v5

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x7d

    int-to-short v7, v7

    const v8, -0x12767963

    invoke-static {v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    sub-int/2addr v8, v5

    invoke-static {v1, v4, v3, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->b(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻐ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/al$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/al;->e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->i:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al$a$a;->j:I

    rem-int/lit8 v0, v0, 0x2

    :cond_6a
    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.al.b (com.ironsource.adqualitysdk.sdk.i.al$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/al$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/al;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/al;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->d:[C

    return-void

    :array_a
    .array-data 2
        0x36s
        0x69s
        0x64s
        0x66s
        0x65s
        0x6as
        0x6es
        0x6cs
        0x6es
        0x4es
        0x4es
        0x6es
        0x58s
        0x5cs
        0x74s
        0x73s
        0x71s
        0x6es
        0x5fs
        0x5bs
        0x6ds
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->d:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->e:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x44

    if-nez v0, :cond_11

    const/16 v0, 0x44

    goto :goto_13

    :cond_11
    const/16 v0, 0x48

    :goto_13
    const/4 v2, 0x0

    const-string v3, "\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_6a

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al;->g(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/al;->e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z

    goto :goto_69

    :cond_42
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_76

    invoke-static {v5, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/al;->g(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/al;->e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z

    :goto_69
    return-void

    :array_6a
    .array-data 4
        0x0
        0x15
        0x0
        0x0
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x15
        0x0
        0x0
    .end array-data
.end method
