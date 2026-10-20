###### Class com.json.adqualitysdk.sdk.i.ga (com.ironsource.adqualitysdk.sdk.i.ga)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ga;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ga$d;,
        Lcom/ironsource/adqualitysdk/sdk/i/ga$e;
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x63

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a:[C

    return-void

    :array_a
    .array-data 2
        0xc6s
        0xd2s
        0xd1s
        0xc8s
        0xd7s
        0xd5s
        0xd6s
        0x92s
        0xc5s
        0xdcs
        0xc7s
        0xc4s
        0x9as
        0x91s
        0x93s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_10
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ga;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ga;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p1, v3, :cond_42

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/ga;->c:Z

    if-eqz p3, :cond_78

    array-length p0, p1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_54
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_71

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-char v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_54

    :cond_71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_78
    array-length p1, p0

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p1, p1, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_7f
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_9c

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract synthetic ﻐ()Ljava/lang/Class;
.end method

.method public abstract synthetic ﻛ()Ljava/lang/String;
.end method

.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0081\u0084\u0083\u0083\u0082\u0081"

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v4, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const-string v4, "\u008f\u008e\u008d"

    invoke-static {v3, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ga;->e:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ga;->f:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 6

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/bh;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089"

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bh;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ga;->e:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ga;->f:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x5a

    if-nez v2, :cond_28

    const/16 v2, 0x62

    goto :goto_2a

    :cond_28
    const/16 v2, 0x5a

    :goto_2a
    if-eq v2, v3, :cond_32

    const/16 v2, 0x18

    :try_start_2e
    div-int/2addr v2, v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    return-object v0

    :catchall_30
    move-exception v0

    throw v0

    :cond_32
    return-object v0
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ga;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ga;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x54

    if-nez v0, :cond_11

    const/16 v0, 0x54

    goto :goto_13

    :cond_11
    const/16 v0, 0x20

    :goto_13
    const-string v2, "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089"

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7f

    :goto_21
    invoke-static {v4, v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ga;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_2a
    const/16 v0, 0x75

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    add-int/lit8 v1, v1, -0x25

    div-int/2addr v0, v1

    goto :goto_21

    :goto_34
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ga;->e:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ga;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    if-nez v1, :cond_44

    const/16 v3, 0x17

    :cond_44
    if-eq v3, v2, :cond_47

    return-object v0

    :cond_47
    :try_start_47
    throw v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    throw v0
.end method
