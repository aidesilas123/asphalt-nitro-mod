###### Class com.json.adqualitysdk.sdk.i.gu (com.ironsource.adqualitysdk.sdk.i.gu)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/gu$c;
    }
.end annotation


# static fields
.field private static a:J = 0x351d7fcd9ad36e4aL

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
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a:J

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


# virtual methods
.method public final ﻐ()Ljava/lang/Class;
    .registers 4

    const-class v0, Lcom/unity3d/services/UnityServices;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x5

    :try_start_16
    div-int/2addr v1, v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_18

    :goto_17
    return-object v0

    :catchall_18
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    const-string v1, "\ucffe\ucf9d\ub96c\ud749\u9ee7\ua660\u421e\uec90\u76a3\u9e70\u0b32\ua212\ubdd7\u59c5\ud067\u1b60\ue4f5\u20cb\u9699\ud040\u2b37\uebe5\u5fb6\u896d\u5218\ub52b\ue4d5\u4eaf\u997a\u7c2f\uad30\u07cb\udf94\uc778\u7222\ufcf5\u06db\u8e95"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    const-string v2, "\udb74\udb17\u725a\u1c7f\u07c6\ub7d8\udb3c\ufd68\u6239\u554b\u920e\ub3b1\ua956\u92b3\u490d\u0a83\uf062\uebf1\u0fbe\uc1f7\u3fb5\u20d4\uc681"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, "\ue2e7\ue2d0\u7242\u1c26\ud72a\ua3af\u0b8e"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cb;

    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v2, "\ued1a\ued6f\u10d9\u7efd\ue65d\u02ed\u3aa0\u4847\u544b\u37ca\u7385\u0698"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x3e

    if-eqz v1, :cond_26

    const/16 v1, 0x34

    goto :goto_28

    :cond_26
    const/16 v1, 0x3e

    :goto_28
    if-ne v1, v2, :cond_2b

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    throw v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "\ued1a\ued6f\u10d9\u7efd\ue65d\u02ed\u3aa0\u4847\u544b\u37ca\u7385\u0698"

    cmp-long v5, v0, v2

    rsub-int/lit8 v0, v5, -0x1

    invoke-static {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/gu;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu;->b:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu;->c:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.gu.c (com.ironsource.adqualitysdk.sdk.i.gu$c)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gu$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\u45a4'

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

.method private static a()Z
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/gu;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/gu;-><init>()V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z

    move-result v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->c:C

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
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->a()Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_15

    const/16 v0, 0x50

    goto :goto_17

    :cond_15
    const/16 v0, 0x12

    :goto_17
    if-eq v0, v1, :cond_2f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    const/4 v1, 0x0

    if-nez v0, :cond_2c

    return-object v1

    :cond_2c
    :try_start_2c
    throw v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    throw v0

    :cond_2f
    const-class v0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    return-object v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->a()Z

    move-result v0

    const/16 v1, 0x27

    if-eqz v0, :cond_15

    const/16 v0, 0x3d

    goto :goto_17

    :cond_15
    const/16 v0, 0x27

    :goto_17
    if-eq v0, v1, :cond_25

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    return-object v0

    :cond_25
    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v0, v2

    const-string v2, ""

    invoke-static {v2, v2, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    int-to-char v1, v1

    const-string v2, "\u78b1\u37a1\u46f1\u42af"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\u6c68\u9a56\u4153\uc9ec\u23b2\u74cd\u0c02\uf3c3\u0eee\u281f\u266a\u5fe4\u68d2\ua5d9\u5fb2\ub892\ufdaf\ub9da\u320e\u23c1\u7b29\uf4aa\u8549\udae8\u2654\u2167\u4808\u554e\u9fd0\uc260\u3eab\u9f25\u09db\u4942\u3f4a\u3a53\u47c5\uaf1f\u9fea\u9d7f\u1d50\u133f\uc8ae\u15c1\ud986\u9544"

    invoke-static {v2, v3, v0, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 13

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const v1, 0x6226a57d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u7c3c\u26a5\uea62\u62b7"

    const-string v8, "\u7eb3\u7d91\u5669\ud19b\uca50\u9462\uab8b\u82ec\u05ad\uf531\u23f2\u3afb\u6b18\u8a7a\u8448\u6058\ud0b4\ued96\ue3a3"

    const-string v9, "\ufe7c\u2e13\u050a\u4ea5"

    const-string v10, "\ua195\ufb07\u71ae"

    cmp-long v11, v2, v4

    sub-int/2addr v1, v11

    const v2, 0xb7ea

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    int-to-char v2, v3

    invoke-static {v7, v6, v1, v2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const v2, 0xa2e13fe

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    const v2, 0xa505

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    int-to-char v2, v2

    invoke-static {v9, v6, v3, v2, v10}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 7

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    const-string v3, "\udcb1\u47a7\ud186\u5af0"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u964a\u9747\uaf51\ufcf4\u77f3\u4988\ud944\u84e5"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x16

    if-eqz v0, :cond_11

    const/16 v0, 0x21

    goto :goto_13

    :cond_11
    const/16 v0, 0x16

    :goto_13
    const-string v2, "\u964a\u9747\uaf51\ufcf4\u77f3\u4988\ud944\u84e5"

    const/4 v3, -0x1

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\udcb1\u47a7\ud186\u5af0"

    const/4 v6, 0x0

    if-eq v0, v1, :cond_30

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shl-int/lit8 v0, v0, 0x39

    const/4 v1, 0x1

    invoke-static {v6, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    shr-int v1, v3, v1

    int-to-char v1, v1

    goto :goto_40

    :cond_30
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    invoke-static {v6, v6}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    sub-int/2addr v3, v1

    int-to-char v1, v3

    :goto_40
    invoke-static {v5, v4, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->e:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
