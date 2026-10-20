###### Class com.json.adqualitysdk.sdk.i.fu (com.ironsource.adqualitysdk.sdk.i.fu)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:J = 0x1a2d0c8d24bd9eceL

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

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a:J

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


# virtual methods
.method public final ﻐ()Ljava/lang/Class;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x43

    if-nez v1, :cond_11

    const/16 v1, 0x43

    goto :goto_13

    :cond_11
    const/16 v1, 0x32

    :goto_13
    if-eq v1, v2, :cond_18

    const-class v1, Lio/bidmachine/BidMachine;

    goto :goto_1e

    :cond_18
    const-class v1, Lio/bidmachine/BidMachine;

    const/16 v2, 0x2c

    :try_start_1c
    div-int/lit8 v2, v2, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_27

    :goto_1e
    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :catchall_27
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-string v2, "\u9ea7\uf48a\u4ab6\ua02d\u360b\u8c7d\ue3a1\u7982\ucff5\u2525\ubb09\u1179\u64af\ufacf\u50d6\ua622\u3c1a\u9258\ue9a9\u7f9c\ud5fa\u2b20\u8112\u1776"

    if-eq v0, v1, :cond_25

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    add-int/lit16 v0, v0, 0x497e

    :goto_1c
    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_25
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x6a2b

    goto :goto_1c

    :goto_2e
    return-object v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const v1, 0x854a

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "\u9ead\u1bea\u9436\u1141\u8b87\u04da\u8178\u3bac\ub4e4\u311e\uaa0f\u2495\ua123\u5a65\ud4b9\u51ca\uca1d\u475d\uc1e1\u7a31\uf777"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    rsub-int v2, v2, 0x7361

    const-string v3, "\u9ef9\ued81\u783c"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bd;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x153d

    const-string v2, "\u9eac\u8b9a\ub4d0\ua114\uca5b\uf49c\ue1c8\u0a0c\u3748\u218e"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bd;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2a

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    goto :goto_13

    :cond_11
    const/16 v0, 0x2a

    :goto_13
    const-string v2, "\u9eaf\u80c7\ua277\uc5e6\ue716\u0680\u282e\u4a4c"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_28

    const/16 v0, 0x191

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    div-int/2addr v0, v1

    :goto_1f
    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_28
    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x1e6d

    goto :goto_1f

    :goto_2f
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fu;->c:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fu;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    const/4 v3, 0x1

    :cond_3d
    if-eq v3, v2, :cond_40

    return-object v0

    :cond_40
    const/4 v0, 0x0

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    throw v0
.end method
