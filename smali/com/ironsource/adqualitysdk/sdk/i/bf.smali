###### Class com.json.adqualitysdk.sdk.i.bf (com.ironsource.adqualitysdk.sdk.i.bf)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/bf;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# static fields
.field private static t:[C = null

.field private static u:J = 0x0L

.field private static v:I = 0x0

.field private static w:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bf;->t:[C

    const-wide v0, 0x1a5b5f0449fd12c0L

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bf;->u:J

    return-void

    :array_10
    .array-data 2
        0x45s
        0x128es
        0x25c1s
        0x3802s
        0x4b4cs
        0x5d85s
        0x70c4s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static k(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/bf;->t:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/bf;->u:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final j()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/az$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻏ()Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x36

    if-nez v1, :cond_1a

    const/16 v1, 0x36

    goto :goto_1c

    :cond_1a
    const/16 v1, 0x5d

    :goto_1c
    if-eq v1, v2, :cond_1f

    return v0

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    throw v0
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    const/16 v0, 0x1b

    add-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x3c

    if-eqz v1, :cond_1b

    const/16 v1, 0x3c

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x38

    :goto_1d
    if-eq v1, v2, :cond_20

    return-object p1

    :cond_20
    :try_start_20
    div-int/lit8 v0, v0, 0x0
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_23

    return-object p1

    :catchall_23
    move-exception p1

    throw p1
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-nez v0, :cond_f

    const/4 v0, 0x6

    goto :goto_11

    :cond_f
    const/16 v0, 0x3f

    :goto_11
    if-eq v0, v1, :cond_2f

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v0, 0x30

    cmp-long v6, v2, v4

    add-int/2addr v6, v1

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-static {v6, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/bf;->k(IIC)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_2f
    const/4 v0, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    div-int/2addr v0, v5

    const/16 v1, 0x73

    const/16 v2, 0x26

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    div-int/2addr v1, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x2

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bf;->k(IIC)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bf;->w:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bf;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
