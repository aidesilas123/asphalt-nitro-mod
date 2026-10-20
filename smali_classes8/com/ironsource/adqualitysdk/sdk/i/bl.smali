###### Class com.json.adqualitysdk.sdk.i.bl (com.ironsource.adqualitysdk.sdk.i.bl)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/bl;
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

    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->t:[C

    const-wide v0, -0x7f8329d76b3a9e21L    # -2.566538740992869E-306

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->u:J

    return-void

    nop

    :array_12
    .array-data 2
        -0x56fbs
        -0x371bs
        0x6a9fs
        -0x7345s
        0x2e4ds
        -0x25cas
        -0x4440s
        0x19a1s
        -0x7fs
        0x5d77s
        0x3375s
        -0x6edes
        0x770cs
        -0x2b13s
        -0x5511s
        0x8acs
        -0x1168s
        0x4c64s
        0x225cs
        -0x7fdes
        0x661cs
        -0x3810s
        -0x6489s
        -0x55cs
        0x58c7s
        -0x4159s
        0x1c0es
        0x7236s
        -0x2fb4s
        0x3668s
        -0x6a62s
        -0x1413s
        0x49c3s
        -0x501bs
        0xd13s
        0x6369s
        -0x3eb7s
        0x2763s
        -0x796ds
        -0x1b0bs
        0x7af5s
        -0x2701s
        0x3e1es
        -0x63c6s
        -0xdb4s
        0x504as
        -0x4863s
        0x15bfs
        0x6bdes
        -0x3630s
        0x2f13s
        -0x72dds
        -0x1ca1s
        0x4163s
        -0x5f63s
        0x6dfs
        0x64f3s
        -0x3647s
        -0x57b1s
        0xa2es
        -0x13f2s
        0x4ef8s
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/bl;->t:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/bl;->u:J

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

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 11

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_ee

    goto/16 :goto_d1

    :sswitch_e
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    add-int/lit8 v1, v1, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x5

    const v6, 0xda78

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v1, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bl;->k(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    const/4 v0, 0x1

    goto/16 :goto_d1

    :sswitch_3a
    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    add-int/lit8 v1, v1, 0x5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    const v6, 0xc9f5

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v7

    int-to-byte v7, v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v1, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bl;->k(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    add-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    rem-int/2addr p1, v3

    const/4 v0, 0x3

    goto :goto_d1

    :sswitch_6b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, 0x5

    invoke-static {v5, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    const v7, 0xa943

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    int-to-char v7, v7

    invoke-static {v1, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bl;->k(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    const/4 v0, 0x0

    goto :goto_d1

    :sswitch_92
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x23

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x16

    const v7, 0x9b14

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-char v7, v7

    invoke-static {v1, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bl;->k(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    const/4 p1, 0x1

    goto :goto_bc

    :cond_bb
    const/4 p1, 0x0

    :goto_bc
    if-eq p1, v4, :cond_bf

    goto :goto_d1

    :cond_bf
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_cb

    const/4 v5, 0x1

    :cond_cb
    if-eq v5, v4, :cond_cf

    const/4 v0, 0x2

    goto :goto_d1

    :cond_cf
    const/4 p1, 0x4

    const/4 v0, 0x4

    :cond_d1
    :goto_d1
    if-eqz v0, :cond_ea

    if-eq v0, v4, :cond_e7

    if-eq v0, v3, :cond_e7

    if-eq v0, v2, :cond_db

    const/4 p1, 0x0

    return-object p1

    :cond_db
    const-class p1, Lcom/fyber/ads/internal/Offer;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    rem-int/2addr v0, v3

    return-object p1

    :cond_e7
    const-class p1, Lcom/fyber/ads/ofw/OfferWallActivity;

    return-object p1

    :cond_ea
    const-class p1, Lcom/fyber/Fyber;

    return-object p1

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x7908c956 -> :sswitch_92
        0x412eabc -> :sswitch_6b
        0x4892a3c -> :sswitch_3a
        0x29d78355 -> :sswitch_e
    .end sparse-switch
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bl;->v:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bl;->w:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x1

    :goto_1c
    if-ne v1, v2, :cond_1f

    return-object v0

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
