###### Class com.json.adqualitysdk.sdk.i.dl (com.ironsource.adqualitysdk.sdk.i.dl)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/dl$e;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;",
            ">;"
        }
    .end annotation
.end field

.field private static c:[C = null

.field private static d:J = 0x0L

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->F()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b:Ljava/util/Map;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Landroid/util/Pair;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    if-nez v0, :cond_11

    const/16 v0, 0x8

    goto :goto_13

    :cond_11
    const/16 v0, 0x47

    :goto_13
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->h(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    if-eq v0, v1, :cond_1a

    goto :goto_1d

    :cond_1a
    const/4 p1, 0x3

    :try_start_1b
    div-int/lit8 p1, p1, 0x0
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_28

    :goto_1d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_28
    move-exception p0

    throw p0
.end method

.method private B(Lcom/ironsource/adqualitysdk/sdk/i/dt;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    if-eqz v0, :cond_11

    const/16 v0, 0x3b

    goto :goto_13

    :cond_11
    const/16 v0, 0x1a

    :goto_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_c4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﺙ()Z

    move-result v1

    if-eqz v1, :cond_5c

    :try_start_26
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fa;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fa;-><init>(Ljava/lang/Integer;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_46

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catch_46
    :try_start_46
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ff;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ff;-><init>(Ljava/lang/Long;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_9e

    return-object p1

    :cond_5c
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﱟ()Z

    move-result v1

    if-eqz v1, :cond_78

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fb;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fb;-><init>(Ljava/lang/Double;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_78
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻏ()Z

    move-result v1

    if-eqz v1, :cond_9e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fd;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fd;-><init>(Ljava/lang/Boolean;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catch_9e
    :cond_9e
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fe;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fe;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x56

    if-eqz v0, :cond_bc

    const/16 v0, 0x56

    goto :goto_be

    :cond_bc
    const/16 v0, 0x11

    :goto_be
    if-eq v0, v1, :cond_c1

    return-object p1

    :cond_c1
    :try_start_c1
    throw v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception p1

    throw p1

    :cond_c4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﺙ()Z

    :try_start_d0
    throw v2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception p1

    throw p1
.end method

.method private C(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    cmp-long v8, v1, v3

    invoke-static {v6, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x32b

    invoke-static {v6, v6}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x55c0

    int-to-char v2, v2

    invoke-static {v8, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    rsub-int v8, v8, 0x3bd

    const/16 v9, 0x30

    invoke-static {v7, v9, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-static {v2, v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v7

    invoke-static {v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v2

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    cmp-long v10, v8, v3

    rsub-int v3, v10, 0x317

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v7, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p2

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ef;

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ef;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_90
    iget p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr p2, v5

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ec;

    invoke-direct {p2, p1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ec;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 p2, p2, 0x19

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_ab

    const/4 v5, 0x0

    :cond_ab
    if-eqz v5, :cond_ae

    return-object p1

    :cond_ae
    const/4 p1, 0x0

    :try_start_af
    throw p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p1

    throw p1
.end method

.method private D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v4, 0x3

    const v5, 0xd0e4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/16 v9, 0x8

    const/4 v10, 0x5

    const-string v11, ""

    const-wide/16 v12, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_29e

    goto/16 :goto_1e7

    :sswitch_27
    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v17

    cmp-long v2, v17, v12

    sub-int/2addr v10, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x31

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v10, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    goto/16 :goto_1e8

    :sswitch_4d
    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5

    invoke-static {v11, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3c

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x740e

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x19

    if-eqz v0, :cond_75

    const/16 v0, 0x19

    goto :goto_77

    :cond_75
    const/16 v0, 0x5e

    :goto_77
    if-eq v0, v2, :cond_7b

    goto/16 :goto_1e7

    :cond_7b
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    goto/16 :goto_16d

    :sswitch_87
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v4, v9, v12

    rsub-int/lit8 v4, v4, 0x4d

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/16 v4, 0x9

    goto/16 :goto_1e8

    :sswitch_af
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v10

    cmp-long v2, v10, v12

    add-int/lit8 v2, v2, 0x2

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/2addr v4, v14

    rsub-int/lit8 v4, v4, 0x49

    const v7, 0x96c1

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v17, v10, v12

    sub-int v7, v7, v17

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x0

    goto :goto_dd

    :cond_dc
    const/4 v0, 0x1

    :goto_dd
    if-eq v0, v15, :cond_1e7

    const/16 v4, 0x8

    goto/16 :goto_1e8

    :sswitch_e3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    cmpl-float v2, v2, v7

    add-int/lit8 v2, v2, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    cmpl-float v4, v4, v7

    rsub-int/lit8 v4, v4, 0x2f

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x2

    goto/16 :goto_1e8

    :sswitch_10a
    invoke-static {v11}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2c

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/2addr v7, v14

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    goto/16 :goto_1e8

    :sswitch_139
    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/16 v7, 0x30

    invoke-static {v11, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/2addr v0, v10

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_167

    const/4 v0, 0x1

    goto :goto_168

    :cond_167
    const/4 v0, 0x0

    :goto_168
    if-eq v0, v15, :cond_16d

    const/4 v4, 0x7

    goto/16 :goto_1e8

    :cond_16d
    :goto_16d
    const/4 v4, 0x5

    goto/16 :goto_1e8

    :sswitch_170
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    add-int/2addr v2, v15

    invoke-static {v11, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2b

    invoke-static {v11, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    sub-int v7, v5, v7

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x0

    goto :goto_1e8

    :sswitch_192
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/2addr v2, v8

    sub-int/2addr v9, v2

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/16 v4, 0x22

    cmpl-float v2, v2, v7

    add-int/lit8 v2, v2, 0x41

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    rsub-int v7, v7, 0x4fbb

    int-to-char v7, v7

    invoke-static {v9, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    const/16 v0, 0x22

    goto :goto_1bc

    :cond_1ba
    const/16 v0, 0x58

    :goto_1bc
    if-eq v0, v4, :cond_1bf

    goto :goto_1e7

    :cond_1bf
    const/4 v4, 0x6

    goto :goto_1e8

    :sswitch_1c1
    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v2, v10, v12

    rsub-int/lit8 v2, v2, 0x6

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x36

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v7

    shr-int/2addr v7, v9

    rsub-int v7, v7, 0x4444

    int-to-char v7, v7

    invoke-static {v2, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x4

    goto :goto_1e8

    :cond_1e7
    :goto_1e7
    const/4 v4, -0x1

    :goto_1e8
    packed-switch v4, :pswitch_data_2c8

    iget v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v0, v15

    iput v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-virtual/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    neg-int v2, v2

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    cmp-long v6, v4, v12

    add-int/lit8 v6, v6, 0x1f

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4f

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v6, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/fk;

    invoke-direct {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fk;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_23a
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->n(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_23f
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->q(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_244
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->m(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_259

    :try_start_254
    div-int/2addr v8, v3
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_256

    return-object v0

    :catchall_256
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_259
    return-object v0

    :pswitch_25a
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->k(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_25f
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->p(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_264
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->o(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_269
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->r(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_26e
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->J(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    :pswitch_273
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->M(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_286

    const/16 v2, 0x4c

    goto :goto_287

    :cond_286
    const/4 v2, 0x6

    :goto_287
    if-eq v2, v14, :cond_291

    const/16 v2, 0x5e

    :try_start_28b
    div-int/lit8 v3, v2, 0x0
    :try_end_28d
    .catchall {:try_start_28b .. :try_end_28d} :catchall_28e

    return-object v0

    :catchall_28e
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_291
    return-object v0

    :pswitch_292
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fk;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fk;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_29e
    .sparse-switch
        -0x37b1c2d0 -> :sswitch_1c1
        -0x21ced359 -> :sswitch_192
        0x3b -> :sswitch_170
        0x7b -> :sswitch_139
        0xd1d -> :sswitch_10a
        0x18cc9 -> :sswitch_e3
        0x1c1bb -> :sswitch_af
        0x1c727 -> :sswitch_87
        0x59a58ff -> :sswitch_4d
        0x6bdcb31 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_2c8
    .packed-switch 0x0
        :pswitch_292
        :pswitch_273
        :pswitch_26e
        :pswitch_269
        :pswitch_264
        :pswitch_25f
        :pswitch_25a
        :pswitch_244
        :pswitch_23f
        :pswitch_23a
    .end packed-switch
.end method

.method private E(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$d;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dl$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->O(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dl$e;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 p2, p2, 0x51

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    if-eqz p2, :cond_21

    const/16 p2, 0x2c

    :try_start_1d
    div-int/2addr p2, v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    return-object p1

    :catchall_1f
    move-exception p1

    throw p1

    :cond_21
    return-object p1
.end method

.method static F()V
    .registers 4

    const/16 v0, 0x51b

    new-array v1, v0, [C

    const-string v2, "\u0000{\u0000m_k\u00beh\u001dB|W\u00db\":t\u0099\u0000\u00f8\u001fW\u001a\u00b6\u00f5\u0015\u00bat\u00db\u00d3\u00de2\u00ab\u0091\u00a7\u00f0\u008cO\u008a\u00ae\u00dc\u000ehm}\u00cc\u0006+U\u008ab\u00e93H1\u00a7\u0001\u0006\ne\u00e7\u00c4\u00e3#\u00ca\u0082\u00d6\u00e1\u00e0@\u00bd\u009f\u00a8\u00fe\u008b]\u008c\u00bdc\u001cy{G\u00da^9J\u00d0\u00df\u0000i_h\u0000f_a\u00ben\u0000w_f\u00beu\u001dF|]D6\u001b/\u00fa,Y\u001b8\u000e\u009fltl+r\u00cawiE\u0008]O\u00d8\u0010\u00da\u00f1\u00c9R\u00e53\u00ea\u0094\u0093u\u009a\u00d6\u00bc\u0096\u00b5\u00c9\u00bd(\u00a4\u0000v_o\u00ben\u0000m_g\u00beo\u001dY|Q\u00db(:3\u0099B\u00f8WWE\u00b6\u00ab\u0015\u00bat\u00c9\u00d3\u00c22\u00e4\u0091\u00b7\u00f0\u008eO\u008a\u00ae\u00dc\u000eem~\u00cc\u0006+G\u008a6\u00e91H*\u00a7\t\u0006\u0017e\u00ed\u00c4\u00f8#\u00d0\u00fc\u00cb\u0000i_h\u00be<\u001dY|L\u00db\': \u0099\u0007\u00f8\u001dW\u001b\u00b6\u00e2\u0015\u00eet\u0088\u00d3\u00c52\u00ac\u0091\u00bd\u00f0\u0095O\u0082\u00ae\u0098\u000e*mz\u00ccC+\u0014\u008a$\u00e9?H2\u00a7\u0000\u0006\u0015e\u00ff\u00c4\u00f3#\u00c0\u0082\u0092\u00e1\u00a2@\u00b7\u009f\u00fc\u00fe\u008b]\u00d8\u00bd!\u001c<{\u0005\u0000)\u0000i_h\u00be<\u001dY|L\u00db\': \u0099\u0007\u00f8\u001dW\u001b\u00b6\u00e2\u0015\u00eet\u0088\u00d3\u00d52\u00ab\u0091\u00bc\u00f0\u0084O\u0087\u00ae\u0088\u000ecmw\u00ccH+\u0014\u008a1\u00e98H1\u00a7\u0019\u0006\u0016e\u00ec\u00c4\u00b6#\u00c6\u0082\u00d7\u00e1\u00e0@\u00a7\u009f\u00b2\u00fe\u0099]\u0091\u00bdb\u001cq{\u0002\u00da\u00179\u0016\u0098e\u00f7}\u0000e_b\u00beo\u001dO\u0001\u00a2^\u00a5\u00bf\u00aa\u001c\u00ce}\u008f\u00da\u00f6;\u00f1\u0098\u00d2\u00f9\u00d1V\u00d7\u00b7-\u00140u\u0018\u00d2R3s\u0090~\u00f1KN_\u00afT\u000f\u00aal\u00fc\u00cd\u0080*\u0095\u008b\u00a6\u00e8\u00f2I\u00f5\u00a6\u00c4\u0007\u00d2d#\u00c5%\"\u0005\u0083\u0012\u00e0$Ah\u009ea\u00ff\u000e\\]\u00bc\u00e2\u001d\u00f7z\u00ce\u00db\u00d3\u0000f_a\u00ben\u001d\n|[\u00db)::\u0099\u0006\u00f8\u0019W\n\u00b6\u00e5\u0015\u00f5t\u00c6\u00d3\u00962\u00b7\u0091\u00ba\u00f0\u008fO\u009b\u00ae\u0090\u000enm8\u00ccC+Z\u008a&\u00e9pH)\u00a7\u0005\u0006\u000ee\u00e0\u00c4\u00b6#\u0083\u0082\u0089\u00e1\u00e7\u0000o_~\u00beh\u001dC|W\u00db(:5\u0099\u000e\u00f8PW\u001b\u00b6\u00f4\u0015\u00eat\u00da\u00d3\u00d32\u00b7\u0091\u00a1\u00f0\u0089O\u0081\u00ae\u0092\u000e*mk\u00ccN+[\u008a7\u00e9<H:\u00a7L\u0006\u001fe\u00e6\u00c4\u00f2#\u0084\u0082\u00c5\u00e1\u00a9@\u00ba\u009f\u00b4\u00fe\u00ca\u00fa;\u00a5*D9\u00e7\n\u0086\u0011!*\u00c0kcZ\u0002]\u00adFL\u00a5\u00ef\u00bb\u008e\u0081)\u0094\u00c8\u00fck\u00be\n\u00df\u00b5\u00caT\u00df\u00f43\u009786\u000e\u00d1Xpl\u0013y\u00b22]F\u00fcY\u009f\u00a8>\u00b6\u00d9\u0087x\u0089\u001b\u00e9\u00ba\u00e6e\u00b0\u0004\u00c4\u00a7\u00cdGj\u00e69\u0081N [\u00c3Zb\'\u00d8)\u00878f+\u00c5\u0018\u00a4\u0003\u00038\u00e2yAH O\u008fTn\u00b7\u00cd\u00a9\u00ac\u0093\u000b\u0086\u00ea\u00eeI\u00ac(\u00dd\u0097\u00dfv\u00cc\u00d60\u00b5/\u0014\u000c\u00f3\u0003Rs1`\u0090 \u007fA\u00deL\u00bd\u00b9\u001c\u00bd\u00fb\u0096Z\u00889\u00be\u0098\u00f2G\u00e7&\u0094\u0085\u00cfe6\u00c49\u00a3\u0015\u0002\n\u00e1\u0005@2/#\u008e\u001em\u0001\u00cc\u00fd\u0000t_|\u00bee\u001d\n|K\u00db2:5\u0099\u0016\u00f8\u0015W\u0013\u00b6\u00e9\u0015\u00f4t\u00dc\u00d3\u00962\u00a9\u0091\u00a7\u00f0\u0093O\u009a\u00ae\u00dc\u000ehm}\u00cc\u0006+W\u008a-\u00e9=H.\u00a7\u0003\u0006\u000fe\u00e6\u00c4\u00f2#\u0084\u0082\u009a\u00e1\u00a9@\u00a0\u009f\u00af\u00fe\u0083]\u009c\u00bdc\u001c4{\u0005\u00daK9C\u0098k\u00f7s\u00dd\u0000\u0082\u000cc\u000b\u00c0*\u00a13\u00079X1\u00b9(\u001aG{\u0006\u00dc\u007f=x\u009e[\u00ffXP^\u00b1\u00a4\u0012\u00b9s\u0091\u00d4\u00db5\u00fa\u0096\u00f7\u00f7\u00c2H\u00d6\u00a9\u00dd\t#ju\u00cb\t,\u001c\u008d/\u00ee{O|\u00a0M\u0001[b\u00aa\u00c3\u00ac$\u008c\u0085\u009b\u00e6\u00adG\u00e1\u0098\u00e8\u00f9\u0087Z\u00d4\u00bak\u001b:|\u000e\u00dd\t>\u0010\u009fi\u00f07QV\u00b2O\u0013\u00a8t\u00ab\u00d5\u00886\u008e\u0097\u0094\u00e8\u00e9I\u00e1\u0000c_o\u00beh\u001dI|P\u00dbf:?\u0099\u0007\u00f8\tW\t\u00b6\u00e3\u0015\u00e8t\u00cc\u00d3\u00962\u00b7\u0091\u00ba\u00f0\u008fO\u009b\u00ae\u0090\u000enm8\u00ccD+Q\u008ab\u00e96H1\u00a7\u0000\u0006\u0016e\u00e7\u00c4\u00e1#\u00c1\u0082\u00d6\u00e1\u00e0@\u00ac\u009f\u00a5\u00fe\u00ca]\u0099\u00bd&\u001c3{\n\u00da\u0017\u001d\u00d8B\u00d2\u00a3\u00da\u0000\u00eca\u00e4\u00c6\u009d\'\u0086\u0084\u00f7\u00e5\u00a6J\u00aa\u00abM\u0008Liu\u00ce#/\u0007\u008c\u0006\u00ed\'R2\u00b3(\u0013\u00ddp\u00c1\u00d1\u00f66\u00a1\u0097\u0099\u00f4\u0084U\u0086\u00ba\u00bc\u0000c_o\u00beh\u001dI|P\u00dbf:$\u0099\u0003\u00f8\u0002W\u001f\u00b6\u00e1\u0015\u00bat\u00db\u00d3\u00de2\u00ab\u0091\u00a7\u00f0\u008cO\u008a\u00ae\u00dc\u000ehm}\u00cc\u0006+R\u008a-\u00e9<H2\u00a7\u0003\u0006\re\u00ed\u00c4\u00f2#\u0084\u0082\u00d0\u00e1\u00b9@\u00ee\u009f\u00bd\u00fe\u00ca]\u00df\u00bd/\u001c3\u0015\u00ffJ\u00f3\u00ab\u00f4\u0008\u00d5i\u00cc\u00ce\u00fa/\u00bb\u008c\u008a\u00ed\u008dB\u0096\u00a3u\u0000kaQ\u00c6D\',\u0084n\u00e5\u0011Z\u0007\u00bb\u0013\u001b\u00e2x\u00a4\u00d9\u00d8>\u00cd\u009f\u00fe\u00fc\u00af]\u00ad\u00b2\u009d\u0013\u0096p{\u00d1\u007f6V\u0097J\u00f4|Uz\u008a)\u00eb\u0018H\u0017\u00a8\u00f3\t\u00ecn\u00db\u00cf\u008c,\u0085\u008d\u00ab\u00e2\u00bbC\u00d3\u00a0\u00c3\u0000r_k\u00beh\u001d_|J\u00db(:t\u0099\u0011\u00f8\u0004W\u001f\u00b6\u00f8\u0015\u00fft\u00c5\u00d3\u00d32\u00aa\u0091\u00a6\u00f0\u00c0O\u009d\u00ae\u0094\u000eemm\u00ccJ+P\u008ab\u00e95H0\u00a7\u0008\u0006Ze\u00ff\u00c4\u00ff#\u00d0\u0082\u00da\u00e1\u00e0@\u00e9\u009f\u00e7\u00fe\u00cde\u00e5:\u00fb\u00db\u00fex\u00cc\u0019\u00d4\u00be\u00e1_\u00a0\u00fc\u0091\u009d\u00962\u008d\u00d3npp\u0011J\u00b6_W7\u00f4u\u0095\u0014*\u0001\u00cb\u0014k\u00f8\u0008\u00f3\u00a9\u00c5N\u0093\u00ef\u00a0\u008c\u00b9-\u00bd\u00c2\u00cbc\u008a\u0000f\u00a1eFK\u00e7\u0015\u0084`%r\u00fa|G\u00a6\u0018\u00a4\u00f9\u00b7Z\u009b;\u0094\u009c\u00ed}\u00e4\u00de\u00c2\u00bf\u0095\u0010\u00c8\u00f1=R>3\u0019\u0094\u0016ul\u00d6r\u00b7K\u0008_\u00e9\u0019I\u00bc*\u00b5\u008b\u008cl\u0084\u00cd\u00eb\u00ae\u00f1\u000f\u00bb\u00e0\u00ccA\u00d1\")\u0083sd\u0016\u00c5\u001e\u00a6q\u0007c\u00d89\u00b9\u0008\u001a\u0006\u00fa\u00e4D\u0018\u0000&_(\u0000|_r\u0000=_3\u0000!_3FV\u0000>GP\u0018_\u0000>_3\u0000+\u00a2J\u0004\u00e3[\u00ed\u0000-_#\u0000*\u0000/\u00d5%\u0000.\u0000[\u0000=\u0003X\u0000m_g\u00beo\u001dY|Q\u00db(:3\u0099B\u00f8\u0013W\u0012\u00b6\u00e3\u0015\u00e9t\u00c1\u00d3\u00d82\u00a3\u0091\u00f2\u00f0\u00c7O\u00c7\u00ae\u00dbU\u009d\u0000U_`\u00bey\u001dR|H\u00db#:7\u0099\u0016\u00f8\u0015W\u001a\u00b6\u00ac\u0015\u00f5t\u00d8\u00d3\u00d32\u00b6\u0091\u00b3\u00f0\u0094O\u0081\u00ae\u008e\u000e*\u00ecF\u00b3sRj\u00f1A\u0090[70\u00d6$u\u0005\u0014\u0006\u00bb\tZ\u00bf\u00f9\u00fd\u0098\u00d4?\u00ce\u00de\u00b2}\u00af\u001c\u00d3\u0000C_o\u00bei\u001dM|P\u00db2:t\u0099\u0007\u00f8\u0008W\u001d\u00b6\u00e9\u0015\u00eat\u00dc\u00d3\u00df2\u00ab\u0091\u00bc\u0000E_v\u00bel\u001dO|[\u00db2:1\u0099\u0006\u00f8PW\u0017\u00b6\u00e8\u0015\u00fft\u00c6\u00d3\u00c22\u00ad\u0091\u00b4\u00f0\u0089O\u008b\u00ae\u008e\u000e*mz\u00ccS+@\u008ab\u00e97H1\u00a7\u0018\u0006Z\u00c7\u00e4\u0098\u00fdy\u00ec\u00da\u00d0\u00bb\u00cb\u001c\u00b3\u00fd\u00b6^\u009d?\u0089\u0090\u0086q:\u00d2o\u00b3R\u0014A\u00f5!V77V\u0088\u0016i\u000b\u00c9\u00f1\u00aa\u00eb\u000b\u00c3\u00ec\u0082M\u00a7.\u00ae\u008f\u00a7`\u008f\u00c1\u0080\u00a2z\u0003 \u00e4PEA&v\u0087>X%9\u0010\u009a\u0002z\u00ff\u00db\u00f5\u00bc\u00d1\u001d\u00c2\u00fe\u0088_\u00b80\u00b5\u0091\u00der\u0089\u00d3|\u00b4r\u0015Y\u00f6[WK((\u0089\'j\u001f\u00cb\u000c\u00ab\u00b4\u000c\u00a1\u00ed\u00a0N\u0094/\u0082\u0080\u00f0a\u00e9\u00c2\u00d5\u0000s_{\u00be~\u001dY|[\u00db4:=\u0099\u0012\u00f8\u0004W^\u00b6\u00ff\u0015\u00f2t\u00c7\u00d3\u00c32\u00a8\u0091\u00b6\u00f0\u00c0O\u008c\u00ae\u0099\u000e*m{\u00ccJ+[\u008a1\u00e95H:\u00a7L\u0006\re\u00e1\u00c4\u00e2#\u00cc\u0082\u0092\u00e1\u00e7@\u0093\u009f\u00fb\u007f\u00c3 \u00d6\u00c1\u00ddb\u00eb\u0000s_{\u00bel\u001dO|Jc\u00b2<\u00ba\u00dd\u00ad~\u008e\u001f\u008b\u00b8\u00a7Y\u00e6\u00fa\u00cb\u009b\u00de4\u00ca\u00d5!v?\u0017I\u00b0\u0015Q`\u00f23\u0093G,@\u00cdQm\u00a7\u000e\u00b6\u00af\u0090H\u0090\u00e9\u00e7\u008a\u00b1+\u00fd\u00c4\u00d4e\u009b\u0006(\u00a7w@\u0008\u00e1\u0016\u0082u#g\u00fcr\u009dO>\u0019\u00de\u00ae\u007f\u00bb\u0018\u0095\u00b9\u009eZ\u009c\u00fb\u00ec\u0094\u00ef5\u00c0\u00d6\u00d8w+\u0000E_v\u00bel\u001dO|[\u00db2:1\u0099\u0006\u00f8PW-\u00b6\u00f8\u0015\u00e8t\u00c1\u00d3\u00d82\u00a3\u0091\u00f2\u00f0\u0082O\u009b\u00ae\u0088\u000e*m\u007f\u00ccI+@\u008abXz\u0085\u00b2\u00da\u00a5;\u00ab\u0098\u009c\u00f9\u00c0^\u00f5\u00bf\u00e9\u001c\u00c3}\u0088\u00d2\u00d53<\u0090-\u00f1\u0005V\u0002\u00b7x\u0014*uZ\u00caS+\u0004\u008b\u00b4\u00e8\u00afI\u0092\u00ae\u0080\u000f\u00f5l\u00ff\u00cd\u00e3\"\u00d0\u0083\u0082\u00e02A7\u00a6\\\u0007\u000bd8\u00c5`\u001ae{^\u00d8U8\u00bb\u0099\u00ec\u00fe\u009b_\u008e\u00bc\u0092\u001d\u00f1r\u00f0\u00d3\u00900\u0089\u0091f\u00f6m<l\r\u00a0R\u00ab\u00b3\u00a3\u0010\u0092q\u00d4\u00d6\u00f97\u00f0\u0094\u00c1\u00f5\u00c9Z\u00de\u00bb$\u0018vy\u0001\u00de\u0014?l\u009c>\u00fd[BK\u00a3D\u0003\u00ae`\u00f4\u00c1\u00cd\u00c1n\u00d6\u009b\u0089\u00aeh\u00b7\u00cb\u009c\u00aa\u0086\r\u00ed\u00ec\u00f9O\u00d8.\u00db\u0081\u00d4`b\u00c31\u00a2\u0008\u0005\u001c\u00e4*Gs&H\u0099\u0000xF\u00d8\u00ab\u00bb\u00bd\u001a\u008d\u00fd\u0094\\\u00ff\'\u00c8x\u00fb\u0099\u00f2:\u00c2[\u00c5\u00fc\u00bf\u001d\u00b0\u00be\u0080\u00df\u0093p\u00d3\u0091v2\u007fSL\u00f4W\u0015,\u00b6\u007f\u00d7\nh\u0006\u0089\u0005)\u00f3J\u00fc\u00eb\u00c5\u000c\u00de\u00ad\u00ef\u00ce\u00b3o\u00b6\u0080\u0099!\u0083B%\u00e3o\u0004F\u00a5T\u00c6(g-\u0000E_v\u00be\u007f\u001dO|H\u00db2:=\u0099\r\u00f8\u001eW^\u00b6\u00fb\u0015\u00f2t\u00c1\u00d3\u00da2\u00a1\u0091\u00f2\u00f0\u0090O\u008b\u00ae\u0099\u000eamq\u00ccH+S\u008ab\u00e91H*\u00a7L\u0006\u0014e\u00ed\u00c4\u00ee#\u00d0\u0082\u0092\u00e1\u00b4@\u00a1\u009f\u00b7\u00fe\u008f]\u0096\u00cd>\u0092qsd\u00d0@\u00b1C\u0016*\u00f7j\u0000E_v\u00bel\u001dO|[\u00db2:1\u0099\u0006\u00f8P\u0000 _l\u00bei\u001d^|\u0018\u00db4:1\u0099\u0001\u00f8\u0015W\u0017\u00b6\u00fa\u0015\u00fft\u00cc\u00d3\u0096\u00f4\u00b6\u00ab\u00b5J\u00aa\u0000P_o\u00ben\u001dY|]\u00db4:{\u0000P_o\u00ben\u001dY|Q\u00db(:3\u0099B\u00f8\u0016W\u001f\u00b6\u00e5\u0015\u00f6t\u00cd\u00d3\u00d22\u00e4\u0091\u00b6\u00f0\u0095O\u008b\u00ae\u00dc\u000e~mw\u00cc\u0006+Q\u008a0\u00e9\"H1\u00a7\u001e\u0006\t"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c:[C

    const-wide v0, -0x5fda41d3b17a0f2L

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->d:J

    return-void
.end method

.method private G(Lcom/ironsource/adqualitysdk/sdk/i/dt;Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_23

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x12

    :try_start_1d
    div-int/2addr v2, v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_21

    if-nez v0, :cond_49

    goto :goto_36

    :catchall_21
    move-exception p1

    throw p1

    :cond_23
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x60

    if-nez v0, :cond_32

    const/16 v0, 0x3c

    goto :goto_34

    :cond_32
    const/16 v0, 0x60

    :goto_34
    if-eq v0, v1, :cond_49

    :goto_36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->y(Ljava/lang/String;)V

    :cond_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private H(Ljava/util/List;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x58

    if-eqz v0, :cond_11

    const/16 v0, 0x31

    goto :goto_13

    :cond_11
    const/16 v0, 0x58

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_27

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x30

    :try_start_21
    div-int/2addr v1, v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_25

    if-nez v0, :cond_72

    goto :goto_31

    :catchall_25
    move-exception p1

    throw p1

    :cond_27
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    :goto_31
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x24

    const-string v4, ""

    const/16 v5, 0x30

    invoke-static {v4, v5, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    rsub-int v6, v6, 0x111

    invoke-static {v4, v5, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v1, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_72
    return-object v2
.end method

.method private I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->P(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    :cond_1a
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->P(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x58

    :try_start_23
    div-int/2addr p1, v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2f

    :goto_24
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_2f
    move-exception p1

    throw p1
.end method

.method private J(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x6e

    const v3, 0xfce3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x29

    const v3, -0xffff38

    const/4 v4, 0x0

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0x1c4

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    const v5, 0xd0e4

    add-int/2addr v3, v5

    int-to-char v3, v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->H(Ljava/util/List;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x2b

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v7

    const/4 v8, 0x0

    const-string v9, ""

    cmpl-float v7, v7, v8

    add-int/2addr v7, v5

    int-to-char v5, v7

    invoke-static {v3, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    add-int/lit16 v12, v12, 0xf0

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v6

    cmpl-float v6, v6, v8

    int-to-char v6, v6

    invoke-static {v5, v12, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v3, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    add-int/lit16 v5, v5, 0x97

    const/16 v6, 0x30

    invoke-static {v9, v6, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    add-int/2addr v6, v1

    int-to-char v6, v6

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->H(Ljava/util/List;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/fn;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    invoke-direct {v5, v0, v2, v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/fn;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_f6

    const/4 v0, 0x0

    goto :goto_f7

    :cond_f6
    const/4 v0, 0x1

    :goto_f7
    if-eq v0, v1, :cond_ff

    const/16 v0, 0x26

    :try_start_fb
    div-int/2addr v0, v4
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fd

    return-object p1

    :catchall_fd
    move-exception p1

    throw p1

    :cond_ff
    return-object p1
.end method

.method private K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private L(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﮌ()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1c

    invoke-static {v4, v3, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    rsub-int v7, v7, 0x360

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    neg-int v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int v9, v9, 0x305

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    shr-int/lit8 v10, v10, 0x6

    add-int/lit16 v10, v10, 0x466a

    int-to-char v10, v10

    invoke-static {v1, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v1

    const/16 v9, 0x2a

    if-eqz v1, :cond_7e

    const/16 v1, 0x5c

    goto :goto_80

    :cond_7e
    const/16 v1, 0x2a

    :goto_80
    const v10, 0x100fce3

    const/4 v11, 0x0

    if-eq v1, v9, :cond_d5

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const v1, 0x1000001

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    cmpl-float v1, v1, v11

    add-int/lit8 v1, v1, 0x6e

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    add-int/2addr v12, v10

    int-to-char v10, v12

    invoke-static {v9, v1, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v9

    cmpl-float v9, v9, v11

    add-int/lit8 v9, v9, 0x3f

    invoke-static {v5, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    rsub-int v10, v10, 0x37d

    const v11, 0xc796

    invoke-static {v5, v5}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/2addr v5, v11

    int-to-char v5, v5

    invoke-static {v9, v10, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10d

    :cond_d5
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    cmpl-float v1, v1, v11

    invoke-static {v4, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x6d

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    add-int/2addr v5, v10

    int-to-char v5, v5

    invoke-static {v1, v9, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10d

    iget p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/dv;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v0

    invoke-static {v8, v0}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v0

    invoke-direct {p2, p1, v8, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dv;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_10d
    :goto_10d
    move-object v9, v2

    invoke-static {v4, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    neg-int v1, v1

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    cmp-long v4, v2, v6

    add-int/lit16 v4, v4, 0x96

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    int-to-char v2, v2

    invoke-static {v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->E(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ea;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v0

    invoke-static {v8, v0}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v11

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/ea;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1
.end method

.method private M(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x30

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v0, v1, v0

    add-int/2addr v0, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x6e

    const v8, 0xfce3

    invoke-static {v7}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-char v8, v8

    invoke-static {v0, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x27

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x6f

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v1, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int v8, v8, 0x97

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v11, v9, v2

    rsub-int/lit8 v9, v11, 0x1

    int-to-char v9, v9

    invoke-static {v1, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v8, v8, 0x2d

    invoke-static {v5, v4, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int v4, v4, 0x97

    invoke-static {v7, v7}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v5, v9, v2

    rsub-int/lit8 v2, v5, -0x1

    int-to-char v2, v2

    invoke-static {v8, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9a

    const/4 v3, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    if-eqz v3, :cond_11c

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d6

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    shr-int/2addr v4, v5

    const/16 v5, 0x60

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v8

    add-int/lit8 v8, v8, 0x3b

    shl-int/2addr v5, v8

    invoke-static {v6, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    const/4 v3, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x0

    :goto_d3
    if-eqz v3, :cond_11c

    goto :goto_102

    :cond_d6
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v3

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v4

    int-to-byte v4, v4

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int v5, v5, 0xc4

    invoke-static {v7, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fe

    const/4 v3, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v3, 0x0

    :goto_ff
    if-eq v3, v6, :cond_102

    goto :goto_11c

    :cond_102
    :goto_102
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_112

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    div-int/2addr v2, v7

    goto :goto_115

    :cond_112
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    add-int/2addr v2, v6

    :goto_115
    iput v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    move-object v2, p1

    :cond_11c
    :goto_11c
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;

    invoke-direct {p1, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fl;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private static N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_dd

    const-string v0, ""

    if-eqz p2, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x30

    invoke-static {v0, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int v4, v4, 0x4d6

    const v5, 0xcd1d

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4a

    :cond_49
    move-object p2, v0

    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit16 v4, v4, 0x4de

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    rsub-int/lit8 p0, p0, 0xe

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int p2, p2, 0x4e7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    invoke-static {p0, p2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_cb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x3

    invoke-static {v0, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p2

    add-int/lit16 p2, p2, 0x4f5

    const v0, 0xf495

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    add-int/2addr v6, v0

    int-to-char v0, v6

    invoke-static {p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d5

    :cond_cb
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p0, p0, 0x2

    :goto_d5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_dd
    const/4 p0, 0x0

    :try_start_de
    throw p0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    :catchall_df
    move-exception p0

    throw p0
.end method

.method private O(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dl$e;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-eq v1, v2, :cond_18

    goto/16 :goto_ba

    :cond_18
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    add-int/2addr v1, v3

    goto :goto_2b

    :cond_28
    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v1, v2

    :goto_2b
    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$e;->ﾇ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    :goto_38
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    const-string v5, ""

    invoke-static {v5}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0x461

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x38

    cmpl-float v7, v7, v8

    add-int/lit16 v7, v7, 0x3c3f

    int-to-char v7, v7

    invoke-static {v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const/16 v4, 0x38

    goto :goto_64

    :cond_63
    const/4 v4, 0x5

    :goto_64
    if-eq v4, v9, :cond_c5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    shr-int/lit8 p3, p3, 0x16

    add-int/lit8 p3, p3, 0x16

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int v4, v4, 0x460

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit16 v3, v3, 0xdcc

    int-to-char v3, v3

    invoke-static {p3, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result p3

    sub-int/2addr v2, p3

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    add-int/lit16 p3, p3, 0x476

    const v3, 0xc148

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    cmp-long v4, v7, v5

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {v2, p3, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->P(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_ba
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :cond_c5
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_de

    invoke-interface {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$e;->ﾇ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    goto/16 :goto_38

    :cond_de
    invoke-interface {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$e;->ﾇ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    const/4 p1, 0x0

    :try_start_e9
    throw p1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception p1

    throw p1
.end method

.method private P(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 18

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-eq v0, v1, :cond_e7

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x477

    const v6, 0xc148

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    const-string v9, ""

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    add-int/2addr v12, v6

    int-to-char v6, v12

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit16 v5, v5, 0x477

    const v6, 0xc14a

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v7

    cmp-long v12, v7, v10

    add-int/2addr v12, v6

    int-to-char v6, v12

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit16 v6, v6, 0x477

    const v7, 0x100c149

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    cmp-long v7, v5, v10

    neg-int v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    cmp-long v8, v6, v10

    rsub-int v6, v8, 0x478

    const v7, 0xc149

    invoke-static {v9, v9, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static {v0, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, p0

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->y(Ljava/lang/String;)V

    goto :goto_d3

    :cond_d2
    move-object v5, p0

    :goto_d3
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e0

    const/4 v2, 0x1

    :cond_e0
    if-eq v2, v1, :cond_e3

    return-void

    :cond_e3
    :try_start_e3
    throw v3
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_e7
    move-object v5, p0

    move-object v4, p2

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    :try_start_ec
    throw v3
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method private a(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eq v0, v2, :cond_29

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x6

    :try_start_1a
    div-int/2addr v3, v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_27

    const/16 v3, 0x39

    if-ge v0, p1, :cond_22

    const/16 p1, 0x12

    goto :goto_24

    :cond_22
    const/16 p1, 0x39

    :goto_24
    if-eq p1, v3, :cond_4f

    goto :goto_36

    :catchall_27
    move-exception p1

    throw p1

    :cond_29
    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_33

    const/4 p1, 0x0

    goto :goto_34

    :cond_33
    const/4 p1, 0x1

    :goto_34
    if-eq p1, v2, :cond_4f

    :goto_36
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, p1, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4b

    return v2

    :cond_4b
    const/4 p1, 0x0

    :try_start_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    throw p1

    :cond_4f
    return v1
.end method

.method private b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_32

    const/16 v2, 0x12

    if-eqz v1, :cond_c

    const/16 v1, 0x52

    goto :goto_e

    :cond_c
    const/16 v1, 0x12

    :goto_e
    if-eq v1, v2, :cond_54

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_29

    :try_start_1c
    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dt;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_32

    const/4 v1, 0x4

    :try_start_25
    div-int/2addr v1, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_32
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return-object p1

    :catchall_27
    move-exception p1

    throw p1

    :cond_29
    :try_start_29
    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dt;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p1

    const v1, -0xffffdb

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/lit16 v2, v2, 0x4b2

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x1b

    if-eqz p1, :cond_65

    const/16 p1, 0x1b

    goto :goto_66

    :cond_65
    const/4 p1, 0x1

    :goto_66
    const/4 v1, 0x0

    if-eq p1, v0, :cond_6a

    return-object v1

    :cond_6a
    :try_start_6a
    throw v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    throw p1
.end method

.method private c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-string v3, ""

    const/4 v4, 0x0

    if-ne v0, v1, :cond_51

    :try_start_15
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    return-object p1

    :cond_28
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x18

    const/16 v0, 0x30

    invoke-static {v3, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit16 v0, v0, 0x479

    const v1, 0xd6ce

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    sub-int/2addr v1, v9

    int-to-char v1, v1

    invoke-static {p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :cond_51
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_54} :catch_57

    :try_start_54
    throw v4
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_57
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    throw p1

    :catch_57
    move-exception p1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x22

    invoke-static {v3, v3, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    rsub-int v1, v1, 0x490

    invoke-static {v2, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x278d

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_83

    return-object v4

    :cond_83
    :try_start_83
    throw v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    throw p1
.end method

.method private d(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, ""

    invoke-static {v4, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit16 v4, v4, 0x2fc

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit16 v5, v5, 0x4464

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;

    invoke-direct {v4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V

    invoke-direct {p0, p1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->O(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dl$e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x1

    :goto_3c
    if-eq v2, v3, :cond_60

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v2, v2, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_33

    :cond_60
    return-object v0
.end method

.method private e(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    :goto_4
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b5

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a6

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v3, 0x2e

    const/16 v4, 0x30

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_58

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_32

    goto :goto_90

    :cond_32
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v5, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit16 v3, v3, 0x316

    invoke-static {v7, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v7, 0x1

    :goto_55
    if-eq v7, v8, :cond_90

    goto :goto_8d

    :cond_58
    invoke-static {v5, v4, v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v7, v3, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v3, v4, v3

    rsub-int v3, v3, 0x314

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    if-eq v1, v8, :cond_81

    goto :goto_90

    :cond_81
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8f

    :goto_8d
    const/4 v6, 0x1

    goto :goto_90

    :cond_8f
    const/4 v6, 0x0

    :cond_90
    :goto_90
    if-eqz v6, :cond_a0

    if-eq v6, v8, :cond_9a

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr p1, v8

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    return-object v0

    :cond_9a
    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->C(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    goto/16 :goto_4

    :cond_a0
    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->L(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    goto/16 :goto_4

    :cond_a6
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 p1, 0x0

    :try_start_b2
    throw p1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception p1

    throw p1

    :cond_b5
    return-object v0
.end method

.method private f(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x0

    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v4

    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v6

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﮌ()Z

    move-result v6

    const v7, 0xfce3

    const/16 v8, 0x28

    const/16 v9, 0x19

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_107

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, v8, :cond_80

    const/16 v7, 0x3d

    if-eq v2, v7, :cond_3d

    goto/16 :goto_ac

    :cond_3d
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    cmpl-float v2, v2, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    cmp-long v13, v7, v11

    rsub-int v7, v13, 0x317

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v8

    cmpl-float v8, v8, v10

    rsub-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    invoke-static {v2, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_60} :catch_39b

    const/16 v6, 0x3b

    if-eqz v2, :cond_67

    const/16 v2, 0x3b

    goto :goto_69

    :cond_67
    const/16 v2, 0x4b

    :goto_69
    if-eq v2, v6, :cond_6c

    goto :goto_ac

    :cond_6c
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_7a

    const/16 v2, 0x19

    goto :goto_7c

    :cond_7a
    const/16 v2, 0x35

    :goto_7c
    if-eq v2, v9, :cond_aa

    const/4 v13, 0x0

    goto :goto_ad

    :cond_80
    :try_start_80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x6e

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    sub-int/2addr v7, v9

    int-to-char v7, v7

    invoke-static {v2, v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    const/4 v2, 0x0

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x1

    :goto_a8
    if-eq v2, v15, :cond_ac

    :cond_aa
    const/4 v13, 0x1

    goto :goto_ad

    :cond_ac
    :goto_ac
    const/4 v13, -0x1

    :goto_ad
    if-eqz v13, :cond_ee

    if-eq v13, v15, :cond_c0

    iget v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v0, v15

    iput v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-direct {v0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ej;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_c0
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dy;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int v7, v7, 0x97

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v8

    cmpl-float v8, v8, v10

    sub-int/2addr v15, v8

    int-to-char v8, v15

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->E(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v4, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dy;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_ee
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ds;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-direct {v6, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ej;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct {v2, v4, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ds;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ej;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_107
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ()Z

    move-result v2

    if-eqz v2, :cond_112

    invoke-direct {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->B(Lcom/ironsource/adqualitysdk/sdk/i/dt;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_112
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﮐ()Z

    move-result v2

    if-eqz v2, :cond_126

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/dw;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dw;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_126
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﮉ()Z

    move-result v2
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_12a} :catch_39b

    if-eqz v2, :cond_13a

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v2, v14

    :try_start_135
    invoke-direct {v1, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->t(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_13a
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﱡ()Z

    move-result v2
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13e} :catch_39b

    const/16 v6, 0x30

    const-string v13, ""

    if-eqz v2, :cond_367

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_35b

    :try_start_14f
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/16 v10, 0x21

    if-eq v7, v10, :cond_23c

    if-eq v7, v8, :cond_1fe

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1cc

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_198

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_16c

    :cond_169
    :goto_169
    const/4 v2, -0x1

    goto/16 :goto_261

    :cond_16c
    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    neg-int v7, v7

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    int-to-char v9, v9

    invoke-static {v7, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_18a} :catch_39b

    if-eqz v2, :cond_169

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v14

    :goto_195
    const/4 v2, 0x2

    goto/16 :goto_261

    :cond_198
    :try_start_198
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v16, -0x1

    cmp-long v6, v7, v16

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x315

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1b9} :catch_39b

    if-eqz v2, :cond_1bd

    const/4 v2, 0x1

    goto :goto_1be

    :cond_1bd
    const/4 v2, 0x0

    :goto_1be
    if-eq v2, v15, :cond_1c1

    goto :goto_169

    :cond_1c1
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/2addr v2, v9

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v2, v14

    const/4 v2, 0x1

    goto/16 :goto_261

    :cond_1cc
    :try_start_1cc
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x30c

    const v8, 0xa267

    invoke-static {v13, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v9

    add-int/2addr v9, v8

    int-to-char v8, v9

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1ef} :catch_39b

    if-eqz v2, :cond_169

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/2addr v2, v10

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v14

    if-eqz v2, :cond_1fc

    goto :goto_195

    :cond_1fc
    const/4 v2, 0x4

    goto :goto_261

    :cond_1fe
    :try_start_1fe
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v11

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    rsub-int/lit8 v6, v6, 0x6f

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v18

    cmp-long v7, v18, v11

    const v9, 0xfce3

    sub-int v7, v9, v7

    int-to-char v7, v7

    invoke-static {v8, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_225} :catch_39b

    if-eqz v2, :cond_22a

    const/16 v2, 0xb

    goto :goto_22b

    :cond_22a
    const/4 v2, 0x4

    :goto_22b
    const/16 v6, 0xb

    if-eq v2, v6, :cond_231

    goto/16 :goto_169

    :cond_231
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v14

    const/4 v2, 0x0

    goto :goto_261

    :cond_23c
    :try_start_23c
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v15

    invoke-static {v13}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    rsub-int v7, v7, 0x316

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int v8, v8, 0x379

    int-to-char v8, v8

    invoke-static {v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    const/4 v2, 0x3

    :goto_261
    if-eqz v2, :cond_317

    if-eq v2, v15, :cond_2ed

    if-eq v2, v14, :cond_2df

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2d1

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    const/16 v5, 0x30

    invoke-static {v13, v5, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    add-int/lit16 v5, v5, 0x32d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v11

    const/4 v6, -0x1

    add-int/2addr v8, v6

    int-to-char v6, v8

    invoke-static {v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->y(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_2a4
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ep;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/fa;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/fa;-><init>(Ljava/lang/Integer;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct {v2, v4, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ep;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_2be} :catch_39b

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/2addr v2, v10

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v14

    if-eqz v2, :cond_2c9

    const/4 v3, 0x1

    :cond_2c9
    if-eq v3, v15, :cond_2cc

    return-object v0

    :cond_2cc
    const/4 v2, 0x0

    :try_start_2cd
    throw v2
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_2ce

    :catchall_2ce
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_2d1
    :try_start_2d1
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/eu;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/eu;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_2df
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dz;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dz;-><init>(Ljava/util/Map;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_2ed
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/du;

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    sub-int/2addr v15, v4

    invoke-static {v13, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit16 v4, v4, 0x32b

    const/16 v6, 0x30

    invoke-static {v13, v6, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int v6, v6, 0x55bf

    int-to-char v6, v6

    invoke-static {v15, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->E(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/du;-><init>(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_317
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ee;

    invoke-virtual/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ee;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v2

    const/16 v4, 0x30

    invoke-static {v13, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    neg-int v4, v4

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x97

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    rsub-int v6, v6, 0x318

    invoke-static {v13}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_35b
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_362} :catch_39b

    const/4 v2, 0x0

    :try_start_363
    throw v2
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_364} :catch_39b
    .catchall {:try_start_363 .. :try_end_364} :catchall_364

    :catchall_364
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_367
    :try_start_367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x11

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit16 v5, v5, 0x340

    const v6, 0xec14

    const/16 v7, 0x30

    invoke-static {v13, v7, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {v2, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->y(Ljava/lang/String;)V
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_39a} :catch_39b

    goto :goto_3bb

    :catch_39b
    move-exception v0

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x352

    const/high16 v5, 0x1000000

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v5

    int-to-char v3, v3

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3bb
    const/4 v2, 0x0

    return-object v2
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    neg-int v0, v0

    const-string v1, ""

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int v1, v1, 0x306

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->O(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dl$e;)Ljava/util/List;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private h(Ljava/util/List;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ｋ()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x18

    const/16 v4, 0x30

    invoke-static {v2, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit16 v4, v4, 0x418

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    neg-int v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x42f

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    rsub-int v4, v8, 0x5841

    int-to-char v4, v4

    invoke-static {v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2f

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int v2, v2, 0x430

    const v4, 0x85d9

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    cmp-long v5, v8, v6

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object v1
.end method

.method private i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->l(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_13f

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v2

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/16 v6, 0x2b

    const/16 v7, 0x30

    const/4 v8, 0x3

    const-string v9, ""

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v5, v6, :cond_c8

    const/16 v6, 0x2d

    const-wide/16 v13, 0x0

    if-eq v5, v6, :cond_a0

    const/16 v6, 0x560

    if-eq v5, v6, :cond_6b

    const/16 v6, 0x5a0

    if-eq v5, v6, :cond_3f

    goto/16 :goto_f5

    :cond_3f
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    add-int/lit16 v6, v6, 0x30f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    cmp-long v7, v15, v13

    rsub-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_66

    :cond_65
    const/4 v12, 0x1

    :goto_66
    if-eq v12, v11, :cond_f5

    const/4 v4, 0x3

    goto/16 :goto_f5

    :cond_6b
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    cmp-long v15, v5, v13

    rsub-int/lit8 v5, v15, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit16 v6, v6, 0x30d

    invoke-static {v9, v7, v12, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    add-int/lit16 v7, v7, 0x4c9

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v3, v10

    if-nez v3, :cond_9e

    const/4 v3, 0x4

    const/4 v4, 0x4

    goto :goto_f5

    :cond_9e
    const/4 v4, 0x2

    goto :goto_f5

    :cond_a0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    cmp-long v9, v6, v13

    rsub-int v6, v9, 0x30d

    const v7, 0xa267

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    add-int/2addr v9, v7

    int-to-char v7, v9

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    const/4 v4, 0x1

    goto :goto_f5

    :cond_c8
    invoke-static {v12, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    add-int/2addr v5, v11

    invoke-static {v9, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    add-int/lit16 v6, v6, 0x30c

    invoke-static {v9, v9, v12, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    const/4 v3, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v3, 0x0

    :goto_e9
    if-eqz v3, :cond_f5

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v3, v10

    const/4 v4, 0x0

    :cond_f5
    :goto_f5
    if-eqz v4, :cond_132

    if-eq v4, v11, :cond_124

    if-eq v4, v10, :cond_118

    if-eq v4, v8, :cond_103

    iget v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v2, v11

    iput v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    return-object v1

    :cond_103
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ek;

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-direct {v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ek;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ej;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v2, v10

    return-object v1

    :cond_118
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/es;

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-direct {v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/es;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ej;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    return-object v1

    :cond_124
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ep;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ep;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    return-object v1

    :cond_132
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/fc;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fc;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    :cond_13f
    return-object v1
.end method

.method private j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    const/4 v2, 0x5

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    if-eqz v0, :cond_1bd

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ()I

    move-result v5

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/16 v8, 0x3c

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x30

    const-string v12, ""

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v7, v8, :cond_12a

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_104

    const/16 v8, 0x43c

    if-eq v7, v8, :cond_de

    const/16 v8, 0x781

    if-eq v7, v8, :cond_a7

    const/16 v8, 0x7a0

    if-eq v7, v8, :cond_7a

    const/16 v8, 0x7bf

    if-eq v7, v8, :cond_51

    goto/16 :goto_14e

    :cond_51
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v3

    invoke-static {v14, v14}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v8

    add-int/lit16 v8, v8, 0x309

    invoke-static {v12, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v11

    add-int/2addr v11, v13

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/4 v14, 0x1

    :cond_73
    if-eq v14, v13, :cond_77

    goto/16 :goto_14e

    :cond_77
    :goto_77
    const/4 v6, 0x5

    goto/16 :goto_14e

    :cond_7a
    invoke-static {v12, v12, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    add-int/lit16 v8, v8, 0x301

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const/4 v5, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v5, 0x0

    :goto_a0
    if-eq v5, v13, :cond_a4

    goto/16 :goto_14e

    :cond_a4
    const/4 v6, 0x0

    goto/16 :goto_14e

    :cond_a7
    invoke-static {v12, v14}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v12, v12, v14, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v8

    add-int/lit16 v8, v8, 0x307

    invoke-static {v14}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v11

    rsub-int v11, v11, 0x476c

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x41

    if-eqz v5, :cond_cc

    const/16 v5, 0x27

    goto :goto_ce

    :cond_cc
    const/16 v5, 0x41

    :goto_ce
    if-eq v5, v7, :cond_14e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v5, v5, 0x69

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_dc

    goto :goto_77

    :cond_dc
    const/4 v6, 0x4

    goto :goto_14e

    :cond_de
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x2

    invoke-static {v12, v12, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    add-int/lit16 v8, v8, 0x303

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v11

    shr-int/lit8 v11, v11, 0x8

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    const/4 v14, 0x1

    :cond_100
    if-eqz v14, :cond_14e

    const/4 v6, 0x1

    goto :goto_14e

    :cond_104
    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    add-int/2addr v7, v13

    invoke-static {v14, v14}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v8, v11, v14

    add-int/lit16 v8, v8, 0x307

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v11

    shr-int/lit8 v11, v11, 0x8

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    const/4 v6, 0x3

    goto :goto_14e

    :cond_12a
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {v12, v11, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    add-int/lit16 v8, v8, 0x306

    invoke-static {v12, v11, v14, v14}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v11

    rsub-int v11, v11, 0x4669

    int-to-char v11, v11

    invoke-static {v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    const/4 v6, 0x2

    :cond_14e
    :goto_14e
    if-eqz v6, :cond_1af

    if-eq v6, v13, :cond_1a1

    if-eq v6, v3, :cond_193

    if-eq v6, v10, :cond_17c

    if-eq v6, v9, :cond_16e

    if-eq v6, v2, :cond_160

    iget v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v2, v13

    iput v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    return-object v0

    :cond_160
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/eq;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/eq;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_16e
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/er;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/er;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_17c
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/eo;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v5

    invoke-direct {v2, v0, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/eo;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v3

    return-object v0

    :cond_193
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/et;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/et;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_1a1
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ev;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ev;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_1af
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/el;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/el;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    :cond_1bc
    return-object v0

    :cond_1bd
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    const/4 v0, 0x0

    :try_start_1c4
    throw v0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c5

    :catchall_1c5
    move-exception v0

    move-object v2, v0

    throw v2
.end method

.method private k(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    cmpl-float v1, v3, v1

    rsub-int/lit8 v1, v1, 0x2c

    const v3, 0xd0b4

    const/16 v4, 0x30

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x26

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    rsub-int v2, v6, 0x2d7

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x47c5

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/fj;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/fj;-><init>()V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private l(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v2

    const/16 v3, 0x59

    if-eqz v2, :cond_11

    const/16 v2, 0x59

    goto :goto_13

    :cond_11
    const/16 v2, 0xb

    :goto_13
    if-eq v2, v3, :cond_16

    return-object v0

    :cond_16
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    const/16 v5, 0x2f

    const/16 v6, 0x2a

    const/16 v7, 0x25

    const-string v8, ""

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_51

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ()I

    move-result v12

    invoke-static {v2, v12}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v2

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const/16 v14, 0x36

    :try_start_45
    div-int/2addr v14, v10
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4e

    if-eq v13, v7, :cond_d5

    if-eq v13, v6, :cond_a5

    if-eq v13, v5, :cond_6f

    goto/16 :goto_103

    :catchall_4e
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_51
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ()I

    move-result v12

    invoke-static {v2, v12}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v2

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    if-eq v13, v7, :cond_d5

    if-eq v13, v6, :cond_a5

    if-eq v13, v5, :cond_6f

    goto/16 :goto_103

    :cond_6f
    invoke-static {v8, v10}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    add-int/lit16 v6, v6, 0x313

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x4b

    if-eqz v5, :cond_96

    const/16 v5, 0x51

    goto :goto_98

    :cond_96
    const/16 v5, 0x4b

    :goto_98
    if-eq v5, v6, :cond_103

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/2addr v5, v4

    const/4 v9, 0x1

    goto :goto_103

    :cond_a5
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {v8}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v8

    add-int/lit16 v8, v8, 0x311

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v13

    cmp-long v15, v13, v5

    rsub-int/lit8 v5, v15, 0x1

    int-to-char v5, v5

    invoke-static {v7, v8, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v5, v5, 0x9

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v5, v4

    const/4 v9, 0x0

    goto :goto_103

    :cond_d5
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int v6, v6, 0x313

    const v7, 0xd4ff

    const/16 v13, 0x30

    invoke-static {v8, v13, v10, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    const/4 v5, 0x0

    goto :goto_ff

    :cond_fe
    const/4 v5, 0x1

    :goto_ff
    if-eqz v5, :cond_102

    goto :goto_103

    :cond_102
    const/4 v9, 0x2

    :cond_103
    :goto_103
    if-eqz v9, :cond_12b

    if-eq v9, v11, :cond_11d

    if-eq v9, v4, :cond_10f

    iget v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr v2, v11

    iput v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    return-object v0

    :cond_10f
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ew;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->l(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ew;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_11d
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/em;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->l(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/em;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    return-object v0

    :cond_12b
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ex;

    invoke-direct/range {p0 .. p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->l(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v6

    invoke-direct {v5, v0, v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ex;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/2addr v2, v4

    if-eqz v2, :cond_148

    :try_start_143
    div-int/2addr v3, v10
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_145

    return-object v0

    :catchall_145
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_148
    return-object v0
.end method

.method private m(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fg;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    :goto_9
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x2fc

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    rsub-int v4, v4, 0x4465

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x4c

    if-nez v1, :cond_34

    const/16 v1, 0x4c

    goto :goto_36

    :cond_34
    const/16 v1, 0xa

    :goto_36
    if-eq v1, v2, :cond_54

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/fg;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :cond_54
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_9
.end method

.method private n(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2b

    const v1, 0xd0e4

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    invoke-static {v5, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->O(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/dl$e;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fo;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/fo;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_41

    const/4 v4, 0x1

    :cond_41
    if-nez v4, :cond_44

    return-object p1

    :cond_44
    const/4 p1, 0x0

    :try_start_45
    throw p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    throw p1
.end method

.method private o(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x2b

    const v2, 0xd0e5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v3

    sub-int/2addr v2, v8

    int-to-char v2, v2

    invoke-static {v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﻛ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fm;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    goto :goto_59

    :cond_42
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fm;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fm;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v1, v1, 0x2

    :goto_59
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, -0x5

    const v5, 0xd0e4

    const/4 v6, 0x0

    invoke-static {v1, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    const-string v8, ""

    cmpl-float v6, v7, v6

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    rsub-int/lit8 v4, v4, 0x24

    invoke-static {v8, v3, v1, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit16 v3, v3, 0x290

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v4, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private p(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    cmpl-float v1, v2, v1

    add-int/2addr v1, v4

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2b

    const v5, 0xd0e4

    invoke-static {v3, v3, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    sub-int/2addr v5, v3

    int-to-char v3, v5

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x23

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    rsub-int v3, v3, 0x2e3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x6587

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/fh;

    invoke-direct {p1}, Lcom/ironsource/adqualitysdk/sdk/i/fh;-><init>()V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    if-eq v0, v4, :cond_62

    return-object p1

    :cond_62
    const/4 p1, 0x0

    :try_start_63
    throw p1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    throw p1
.end method

.method private q(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const-string v2, ""

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-static {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x190

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-char v4, v4

    invoke-static {v7, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->m(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    rsub-int/lit8 v3, v3, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int v4, v4, 0x1bc

    const v5, 0xdd63

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x35

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    rsub-int v5, v5, 0x1c1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    rsub-int v6, v6, 0x74d

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6e

    const v5, 0xfce3

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x29

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int v5, v5, 0x1f6

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v3

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x1b

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int v6, v6, 0x21e

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x1db5

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->G(Lcom/ironsource/adqualitysdk/sdk/i/dt;Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result v3

    invoke-static {v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ej;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x97

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x27

    invoke-static {v2, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit16 v6, v6, 0x23a

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    invoke-static {v2, v5, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x261

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0x159c

    int-to-char v5, v5

    invoke-static {v2, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->m(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;

    move-result-object p1

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fq;

    invoke-direct {v1, v0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fq;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/fg;Lcom/ironsource/adqualitysdk/sdk/i/fg;Lcom/ironsource/adqualitysdk/sdk/i/ej;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2a

    if-eqz v0, :cond_19a

    const/16 v0, 0x62

    goto :goto_19c

    :cond_19a
    const/16 v0, 0x2a

    :goto_19c
    if-ne v0, v1, :cond_19f

    return-object p1

    :cond_19f
    const/4 p1, 0x0

    :try_start_1a0
    throw p1
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a1

    :catchall_1a1
    move-exception p1

    throw p1
.end method

.method private r(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fr;"
        }
    .end annotation

    const/16 v0, 0x30

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    neg-int v0, v0

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6e

    const v4, 0xfce4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    sub-int/2addr v4, v9

    int-to-char v4, v4

    invoke-static {v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int v4, v4, 0x136

    const v5, 0xfa4b

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v9

    cmp-long v6, v9, v7

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    neg-int v2, v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    cmp-long v5, v3, v7

    rsub-int v3, v5, 0x98

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    rsub-int/lit8 v3, v3, 0x2f

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x161

    const v5, 0xd85f

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    int-to-char v1, v1

    invoke-static {v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/fp;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->D(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/fp;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method static synthetic s(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    const/16 v0, 0x2f

    add-int/2addr p1, v0

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v2, 0x4

    if-eqz p1, :cond_25

    const/4 v0, 0x4

    :cond_25
    if-eq v0, v2, :cond_28

    return-object p0

    :cond_28
    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    throw p0

    :cond_2b
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    :try_start_2e
    throw v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    throw p0
.end method

.method private t(Lcom/ironsource/adqualitysdk/sdk/i/dt;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x33c587

    const/16 v4, 0x30

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_51

    const v3, 0x68b6f7b

    if-eq v2, v3, :cond_24

    goto :goto_7e

    :cond_24
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x3e3

    invoke-static {v5, v4, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-static {v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x27

    if-eqz v0, :cond_4b

    const/16 v0, 0x37

    goto :goto_4d

    :cond_4b
    const/16 v0, 0x27

    :goto_4d
    if-eq v0, v2, :cond_7e

    const/4 v1, 0x1

    goto :goto_7e

    :cond_51
    const v2, -0xfffffc

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    add-int/lit16 v3, v3, 0x3de

    invoke-static {v5, v4, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    rsub-int v8, v8, 0x7fac

    int-to-char v8, v8

    invoke-static {v2, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x1

    :goto_7b
    if-eq v0, v6, :cond_7e

    const/4 v1, 0x0

    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    if-eqz v1, :cond_f3

    if-eq v1, v6, :cond_84

    return-object v0

    :cond_84
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    cmp-long v8, v0, v2

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    rsub-int v0, v0, 0x344

    invoke-static {v7, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    cmpl-float v1, v1, v6

    int-to-char v1, v1

    invoke-static {v8, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2f

    invoke-static {v5, v4, v7, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e9

    invoke-static {v5, v7, v7}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit16 v3, v3, 0x63c1

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->I(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    cmpl-float v1, v1, v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    rsub-int v2, v2, 0x3e3

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾇ()I

    move-result p1

    invoke-static {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ej;-><init>(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->L(Lcom/ironsource/adqualitysdk/sdk/i/dx;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_f3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/fi;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/fi;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 p2, p2, 0x2f

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_104

    const/4 v6, 0x0

    :cond_104
    if-eqz v6, :cond_107

    return-object p1

    :cond_107
    :try_start_107
    throw v0
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception p1

    throw p1
.end method

.method private static u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v1, 0x4b

    if-nez v0, :cond_19

    const/16 v2, 0x4b

    goto :goto_1b

    :cond_19
    const/16 v2, 0x56

    :goto_1b
    if-eq v2, v1, :cond_1f

    move-object p0, v0

    goto :goto_2e

    :cond_1f
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    :goto_2e
    return-object p0
.end method

.method private static v(Lcom/ironsource/adqualitysdk/sdk/i/fr;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eq v2, v1, :cond_1c

    move-object p0, v0

    goto :goto_36

    :cond_1c
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x28

    if-nez v0, :cond_2d

    const/16 v0, 0x28

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x38

    :goto_2f
    if-eq v0, v1, :cond_41

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_41
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    throw p0
.end method

.method private static w(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/dl;->d:J

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

.method static synthetic x(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->y(Ljava/lang/String;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private y(Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x12

    if-nez v0, :cond_11

    const/16 v0, 0x12

    goto :goto_13

    :cond_11
    const/16 v0, 0xb

    :goto_13
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eq v0, v1, :cond_1a

    return-void

    :cond_1a
    :try_start_1a
    throw v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    throw p1
.end method

.method private z(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    rsub-int v4, v4, 0x4f8

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x312

    const/16 v4, 0x30

    invoke-static {v1, v4, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-static {v8, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1c

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    cmpl-float v1, v1, v7

    add-int/lit16 v1, v1, 0x4ff

    invoke-static {v2, v7, v7}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float v2, v2, v7

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->j(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e9

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻛ()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/do;->ﾒ(Ljava/lang/String;I)Lcom/ironsource/adqualitysdk/sdk/i/do;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->c(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dt;->ﾒ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v5, 0x4c0

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_7b

    const/16 v5, 0xf80

    if-eq v4, v5, :cond_39

    goto/16 :goto_b2

    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    rsub-int/lit8 v4, v11, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v5, v11, v9

    rsub-int v5, v5, 0x300

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v13, v11, v9

    rsub-int/lit8 v9, v13, 0x1

    int-to-char v9, v9

    invoke-static {v4, v5, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x27

    if-nez v2, :cond_73

    const/16 v2, 0x27

    goto :goto_75

    :cond_73
    const/16 v2, 0x28

    :goto_75
    if-eq v2, v3, :cond_79

    const/4 v3, 0x1

    goto :goto_b2

    :cond_79
    :goto_79
    const/4 v3, 0x0

    goto :goto_b2

    :cond_7b
    const-string v4, ""

    invoke-static {v4, v7}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {v4}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v9

    add-int/lit16 v9, v9, 0x2fe

    const/16 v10, 0x30

    invoke-static {v4, v10, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/2addr v4, v8

    int-to-char v4, v4

    invoke-static {v5, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/16 v2, 0x30

    goto :goto_a4

    :cond_a2
    const/16 v2, 0x15

    :goto_a4
    if-eq v2, v10, :cond_a7

    goto :goto_b2

    :cond_a7
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_79

    :cond_b2
    :goto_b2
    if-eqz v3, :cond_ca

    if-eq v3, v8, :cond_bc

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    sub-int/2addr p1, v8

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    return-object v0

    :cond_bc
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ey;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    invoke-direct {v2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ey;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_ca
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/eh;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    invoke-direct {v2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/eh;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->u(Lcom/ironsource/adqualitysdk/sdk/i/dx;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/2addr v0, v6

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e8

    const/16 v0, 0x2c

    :try_start_e4
    div-int/2addr v0, v7
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e6

    return-object p1

    :catchall_e6
    move-exception p1

    throw p1

    :cond_e8
    return-object p1

    :cond_e9
    return-object v0
.end method

.method public final ｋ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/fg;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->g:I

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const-string v3, ""

    invoke-static {v3, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v3, v2, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x29

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v2, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->w(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->K(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->m(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fg;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl;->f:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dl.a (com.ironsource.adqualitysdk.sdk.i.dl$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->d(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->A(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dl.b (com.ironsource.adqualitysdk.sdk.i.dl$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->n(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:C = '\u0004'

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->a:[C

    return-void

    :array_a
    .array-data 2
        0x45s
        0x78s
        0x70s
        0x65s
        0x63s
        0x74s
        0x64s
        0x20s
        0x76s
        0x61s
        0x72s
        0x69s
        0x62s
        0x6cs
        0x75s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x13

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    goto :goto_13

    :cond_11
    const/16 v0, 0x3a

    :goto_13
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, 0x1

    :goto_24
    if-eqz v0, :cond_34

    goto :goto_76

    :cond_27
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    const/16 v1, 0x2f

    :try_start_31
    div-int/2addr v1, v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_77

    if-nez v0, :cond_76

    :cond_34
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->c:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->d:I

    rem-int/lit8 v0, v0, 0x2

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    goto :goto_45

    :cond_44
    const/4 v0, 0x1

    :goto_45
    if-eq v0, v2, :cond_48

    goto :goto_76

    :cond_48
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x16

    int-to-byte v2, v2

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    const-string v4, "\u0001\u0002\u0003\u0000\u0005\u0006\u0002\u0007\u0004\u000b\n\u000b\u0008\n\r\u000e\u0007\u000b\r\u000f\u0006\u0004\u000b\u0002\u0007\u0000\u0008\t\u0002\u00076"

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->b(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->x(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_76
    :goto_76
    return-object p1

    :catchall_77
    move-exception p1

    throw p1
.end method

.method private static b(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->a:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->b:C

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


# virtual methods
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->d:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4a

    if-eqz v0, :cond_11

    const/16 v0, 0x4a

    goto :goto_13

    :cond_11
    const/16 v0, 0xf

    :goto_13
    if-eq v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$b;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dl.c (com.ironsource.adqualitysdk.sdk.i.dl$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->g(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a:[C

    return-void

    :array_a
    .array-data 2
        0x32s
        0x64s
        0x64s
        0x6bs
        0x49s
        0x4as
        0x74s
        0x6bs
        0x41s
        0x49s
        0x69s
        0x6bs
        0x52s
        0x51s
        0x73s
        0x6as
        0x66s
        0x67s
        0x41s
        0x42s
        0x64s
        0x6cs
        0x6bs
        0x64s
        0x6as
        0x74s
        0x5es
        0x32s
        0x42s
        0x64s
        0x6ds
        0x6fs
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)",
            "Lcom/ironsource/adqualitysdk/sdk/i/dx;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->s(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/dw;

    if-nez v0, :cond_16

    const/4 v0, 0x2

    goto :goto_18

    :cond_16
    const/16 v0, 0x47

    :goto_18
    if-eq v0, v1, :cond_1b

    goto :goto_1f

    :cond_1b
    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v0, :cond_20

    :goto_1f
    return-object p1

    :cond_20
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5a

    const/4 v4, 0x1

    const-string v5, "\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->x(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    add-int/2addr p1, v4

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    goto :goto_52

    :cond_51
    const/4 p1, 0x1

    :goto_52
    const/4 v0, 0x0

    if-ne p1, v4, :cond_56

    return-object v0

    :cond_56
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    throw p1

    nop

    :array_5a
    .array-data 4
        0x0
        0x20
        0x0
        0x1b
    .end array-data
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

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a:[C

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
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->b:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    if-eq v1, v2, :cond_28

    return-object p1

    :cond_28
    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    throw p1

    :cond_2b
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl$c;->a(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dl.d (com.ironsource.adqualitysdk.sdk.i.dl$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->E(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$d;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$d;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->ﻐ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.dl.e (com.ironsource.adqualitysdk.sdk.i.dl$e)
.class interface abstract Lcom/ironsource/adqualitysdk/sdk/i/dl$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;)TT;"
        }
    .end annotation
.end method
