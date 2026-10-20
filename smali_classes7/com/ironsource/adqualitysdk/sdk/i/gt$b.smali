###### Class com.ironsource.adqualitysdk.sdk.i.gt.b (com.ironsource.adqualitysdk.sdk.i.gt$b)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gt$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/gt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static e:C = '\ud4b8'

.field private static f:C = '\uad84'

.field private static g:C = '\ub7b0'

.field private static h:C = '\u3930'

.field private static i:I = 0x0

.field private static j:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gt;-><init>()V

    return-void
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->g:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->h:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->e:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->f:C

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


# virtual methods
.method public final ﻐ()Ljava/lang/Class;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->j:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x52

    if-eqz v0, :cond_11

    const/16 v0, 0x1d

    goto :goto_13

    :cond_11
    const/16 v0, 0x52

    :goto_13
    if-ne v0, v1, :cond_18

    const-class v0, Lcom/vungle/warren/VungleApiClient;

    return-object v0

    :cond_18
    const-class v0, Lcom/vungle/warren/VungleApiClient;

    const/4 v0, 0x0

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    throw v0
.end method

.method public final ﻛ()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->j:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, "\uc954\ue206\u75e2\u2e9f\ud89a\u018f\uc065\u1007\u72c3\u65a0\uac1f\u5d98\u001f\u2e48\u890b\u064c\ucf37\ub0c2\ucd9f\u0d3a\uc065\u1007\u72c3\u65a0\ue845\uc72b\u7a5e\u7c4d\u34a9\u7a6c\u8285\uaf5f\ud3c8\uf80e"

    if-eq v0, v1, :cond_24

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5f

    :goto_1b
    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_24
    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    goto :goto_1b

    :goto_2b
    return-object v0
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/az;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ce;

    const/16 v1, 0x30

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    const-string v2, "\ud89a\u018f\uc065\u1007\u72c3\u65a0"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ce;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->i:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;->j:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
