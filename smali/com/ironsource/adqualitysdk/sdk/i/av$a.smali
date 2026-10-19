###### Class com.ironsource.adqualitysdk.sdk.i.av.a (com.ironsource.adqualitysdk.sdk.i.av$a)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/i/av$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/av$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field private static b:C = '\u0000'

.field private static c:C = '\u0000'

.field private static d:C = '\u0000'

.field private static e:C = '\u0000'

.field private static f:I = 0x0

.field private static g:I = 0x1

.field public static final enum ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x3

    rsub-int/lit8 v2, v2, 0x3

    const-string v4, "\u45bd\u4848\u013c\u9285"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x8

    const-string v5, "\u9d14\u5953\ubef7\u9568\u0eac\uc064\u62b5\u69bb"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const-string v6, ""

    invoke-static {v6, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    const-string v7, "\u46ba\u7b66\u8aec\ub348\u9715\ufdf3\ua17c\ua509\u49c6\ud308\u62b5\u69bb"

    invoke-static {v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x4

    const-string v14, "\u7d28\u7cb5"

    const-string v15, "\u9d82\u462a\uc9df\u1b08\u13ea\u408c\uf120\u33c4"

    const-string v7, "\u4542\u99ce\ue181\ufcb0\ucf6d\u54fd"

    cmp-long v16, v8, v10

    rsub-int/lit8 v8, v16, 0x3

    invoke-static {v14, v8}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x8

    invoke-static {v15, v9}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v13}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v9, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    const-wide/16 v14, -0x1

    cmp-long v16, v10, v14

    add-int/lit8 v10, v16, 0x4

    invoke-static {v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    aput-object v0, v7, v1

    aput-object v2, v7, v5

    const/4 v0, 0x2

    aput-object v4, v7, v0

    aput-object v6, v7, v3

    aput-object v8, v7, v13

    aput-object v9, v7, v12

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->b:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->c:C

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

.method static e()V
    .registers 1

    const v0, 0xe6cc

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->d:C

    const v0, 0xa2f8

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->c:C

    const v0, 0xf286

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e:C

    const/16 v0, 0x1031

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->b:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/av$a;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x59

    if-eqz v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    const/16 v1, 0x59

    :goto_15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    if-eq v1, v2, :cond_24

    const/16 v0, 0x43

    :try_start_1f
    div-int/lit8 v0, v0, 0x0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception p0

    throw p0

    :cond_24
    :goto_24
    return-object p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/av$a;
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1a

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    return-object v0

    :cond_1a
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;->clone()Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    throw v0
.end method
