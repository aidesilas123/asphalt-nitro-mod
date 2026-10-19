###### Class com.json.adqualitysdk.sdk.i.gn (com.ironsource.adqualitysdk.sdk.i.gn)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\u01aa'

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/gn;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/gn;->c:C

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
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-ne v0, v3, :cond_2f

    const-class v0, Lcom/smaato/sdk/core/SmaatoSdk;

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x1d

    if-eqz v1, :cond_24

    const/16 v1, 0x56

    goto :goto_26

    :cond_24
    const/16 v1, 0x1d

    :goto_26
    if-eq v1, v3, :cond_2e

    const/16 v1, 0xf

    :try_start_2a
    div-int/2addr v1, v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception v0

    throw v0

    :cond_2e
    return-object v0

    :cond_2f
    const-class v0, Lcom/smaato/sdk/core/SmaatoSdk;

    const/4 v0, 0x0

    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4c

    const/16 v2, 0x30

    if-eqz v0, :cond_13

    const/16 v0, 0x30

    goto :goto_15

    :cond_13
    const/16 v0, 0x4c

    :goto_15
    const-string v3, "\u81bd\u807a\u286a\u8a20\ud401\ub0e2\u41be\ubaab\u8533\u75d3\u1cb8\ued99\ueafd\u9afc\u8ae2\u15c7\uf04d\u80c0\u6d08\u9019\u123f\uf1c2\u99b0\u624a\u5e52\u0c3c\ubbb6\ud3b5\uffc5"

    const v4, 0xdad9

    const v5, 0x14c4a39c

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u9c5e\uc4a3\ud914\u0eda"

    const/4 v8, 0x0

    if-eq v0, v1, :cond_3a

    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    sub-int/2addr v5, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    add-int/2addr v0, v4

    int-to-char v0, v0

    :goto_31
    invoke-static {v7, v6, v5, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_3a
    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    sub-int/2addr v5, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    sub-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_31

    :goto_48
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_57

    const/16 v1, 0x30

    goto :goto_59

    :cond_57
    const/16 v1, 0x50

    :goto_59
    if-eq v1, v2, :cond_5c

    return-object v0

    :cond_5c
    const/4 v0, 0x0

    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    throw v0
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 9

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const v1, 0x541b72df

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    sub-int/2addr v1, v2

    const v2, 0x9d4e

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-char v2, v2

    const-string v4, "\udfc4\u1b72\u4e54\ub39d"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u94ea\u0ad9\ufa2e\ub695\u00e1\u954d\u12e1\u429a\ua23a\uc63d\uc2bc\u5890\u7b22\u13ed\ua1d7\u1fc6\uabf3"

    invoke-static {v4, v5, v1, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const v2, -0x4d25391d

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    const v4, 0xa78e

    const-string v6, ""

    invoke-static {v6, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/2addr v6, v4

    int-to-char v4, v6

    const-string v6, "\ue368\udac6\u8eb2\u82a7"

    const-string v7, "\u75c0\uf243\u8b44"

    invoke-static {v6, v5, v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_57

    const/4 v1, 0x0

    goto :goto_58

    :cond_57
    const/4 v1, 0x1

    :goto_58
    if-eq v1, v2, :cond_60

    const/16 v1, 0x3c

    :try_start_5c
    div-int/2addr v1, v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5e

    return-object v0

    :catchall_5e
    move-exception v0

    throw v0

    :cond_60
    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 7

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bw;

    const-string v1, ""

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    const v2, 0xf8a1

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    const-string v3, "\ufcc6\u0299\ua153\u5ef8"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ua7cd\u2f14\u514d\ue586\uc36a\uc134"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bw;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    const v1, 0xf8a1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const-string v2, "\ufcc6\u0299\ua153\u5ef8"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const-string v4, "\ua7cd\u2f14\u514d\ue586\uc36a\uc134"

    invoke-static {v2, v3, v0, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/gn;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gn;->e:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gn;->d:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
