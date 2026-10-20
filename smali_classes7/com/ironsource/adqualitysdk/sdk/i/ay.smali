###### Class com.json.adqualitysdk.sdk.i.ay (com.ironsource.adqualitysdk.sdk.i.ay)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ay;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:[C = null

.field private static c:C = '\u0000'

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:[B = null

.field private static h:[S = null

.field private static i:I = 0x0

.field private static j:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 29

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->a()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, ""

    const/16 v2, 0x30

    invoke-static {v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit8 v3, v3, 0x71

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x8

    const-string v5, "\u0001\u0002\u000e\u000f\u0002\u0011\u000e\t"

    invoke-static {v3, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/fs;

    invoke-direct {v6}, Lcom/ironsource/adqualitysdk/sdk/i/fs;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    const/4 v5, 0x0

    invoke-static {v7, v5, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    const-string v11, "\u0001\u0002\u0011\u000fe"

    const-string v12, "\u0006\u0018\u0013\u0014\u0014\u001a\t\u000c"

    const-string v13, "\u0012\t\u0004\r\n\u001c\u000b\u0007\u0010\r"

    const-string v14, "\u0010\u0007\u0005\n\u000b\r\u00c3\u00c3\u0013\u000b"

    const-string v15, "\u001c\u0000\u0012\u0010\u000c\u000f\r\u001a"

    const-string v8, "\u001c\u0000\u0007\u0006\u0012\t\u00d3"

    const-string v2, "\u001e\u000c\u0012\u000e\u0001\u0002"

    const-string v9, "\u001a\u0006\u000c\r\u00b0"

    const-string v10, "\u001b\u000e\u0011\u000f\u000c\u000b"

    const-string v7, "\u001b\u000e\u0010\r\n\u0005\u0013\n\u0008\u0012\u00d2"

    const-string v4, "\u0016\n\u0008\u000c"

    const-string v5, "\u000c\n\r\t\u000f\u0018\n\u0005w"

    move-object/from16 v20, v5

    const-string v5, "\u001d\u001c\u0005\t\u00bb"

    move-object/from16 v21, v5

    const-string v5, "\u000f\t\u0018\u0012\u0006\u0005\u0018\u0011\u0014\u0011\u0000\u0012"

    move-object/from16 v22, v5

    const-string v5, "\u001e\r\u0010\u0015\r\u0010\u00bc"

    move-object/from16 v23, v5

    const-string v5, "\u001e\u000e\u0006\u0007 \u000fo"

    move-object/from16 v24, v5

    const-string v5, "\u0004\n\u0008\u0010\u00aa"

    const/16 v19, 0x0

    cmpl-float v6, v6, v19

    add-int/lit8 v6, v6, 0x5

    invoke-static {v3, v11, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v11, v6, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/fw;

    invoke-direct {v6}, Lcom/ironsource/adqualitysdk/sdk/i/fw;-><init>()V

    const/16 v18, 0x0

    aput-object v6, v11, v18

    invoke-static {v11}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v25

    const-wide/16 v16, 0x0

    cmp-long v3, v25, v16

    neg-int v3, v3

    const v6, -0x3f958176

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    sub-int/2addr v6, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    move-object/from16 v26, v4

    move-object/from16 v25, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v18

    cmpl-float v4, v18, v5

    int-to-short v4, v4

    const v5, -0x7732cb07

    move-object/from16 v28, v7

    move-object/from16 v27, v10

    const/16 v7, 0x30

    const/4 v10, 0x0

    invoke-static {v1, v7, v10, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v18

    sub-int v5, v5, v18

    invoke-static {v3, v6, v11, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ft;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ft;-><init>()V

    aput-object v4, v5, v10

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x4b

    int-to-byte v3, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-static {v3, v12, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/fv;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/fv;-><init>()V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x1

    const v4, -0x3f958175

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    int-to-short v6, v6

    const v7, -0x7732cafe

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v7, v10

    invoke-static {v3, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ga$e;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ga$e;-><init>()V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ga$d;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ga$d;-><init>()V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x30

    invoke-static {v1, v3, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    int-to-byte v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    rsub-int/lit8 v4, v7, 0xb

    invoke-static {v3, v13, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/fu;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/fu;-><init>()V

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x54

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0xa

    invoke-static {v3, v14, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/gc;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/gc;-><init>()V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x8

    invoke-static {v3, v15, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/gb;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/gb;-><init>()V

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x70

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v4

    add-int/lit8 v5, v5, 0x6

    invoke-static {v3, v8, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/fz;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/fz;-><init>()V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x17

    int-to-byte v3, v3

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-static {v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/fy;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/fy;-><init>()V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3e

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v9, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gf;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gf;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    const v3, -0x3f95816f    # -3.663975f

    invoke-static {v5}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    add-int/2addr v4, v3

    const/high16 v3, 0x1000000

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    add-int/2addr v6, v3

    int-to-byte v3, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    const v7, -0x7732caf3

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v2, v4, v3, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ge;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ge;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6d

    int-to-byte v2, v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    rsub-int/lit8 v3, v6, 0x6

    move-object/from16 v4, v27

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gh;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gh;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6d

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0xb

    move-object/from16 v4, v28

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gg;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gg;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    neg-int v2, v4

    const v3, -0x3f95816e

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-short v6, v6

    const v7, -0x7732caee

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v7

    invoke-static {v2, v4, v3, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gk;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gk;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7b

    int-to-byte v2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v4, v26

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gi;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gi;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x9

    move-object/from16 v4, v20

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gl$e;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gl$e;-><init>()V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gl$b;-><init>()V

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v2, v3, v2

    rsub-int/lit8 v2, v2, -0x1

    const v3, -0x3f95816a

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v1, v5, v5}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    int-to-short v6, v6

    const v7, -0x7732cae4

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v2, v3, v4, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gm;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gm;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x42

    int-to-byte v2, v2

    const/16 v3, 0x30

    invoke-static {v1, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x4

    move-object/from16 v4, v21

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gj;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gj;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const v3, -0x3f958167

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    const v6, -0x7732cadc

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v2, v4, v3, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gp;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gp;-><init>()V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x1

    const v3, -0x3f958164

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, -0x1

    int-to-short v5, v9

    const v6, -0x7732cad3

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v2, v4, v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gn;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gn;-><init>()V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    rsub-int/lit8 v2, v4, 0x3a

    int-to-byte v2, v2

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xb

    move-object/from16 v4, v22

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gq;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gq;-><init>()V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    const v3, -0x3f958163

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    int-to-byte v3, v3

    invoke-static {v1, v1, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v6

    int-to-short v6, v6

    const v7, -0x7732cacc

    const/16 v8, 0x30

    invoke-static {v1, v8, v5, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v2, v4, v3, v6, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gr;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gr;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x48

    int-to-byte v2, v2

    invoke-static {v5, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    move-object/from16 v4, v23

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/go;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/go;-><init>()V

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const v3, -0x3f958162

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v3

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    rsub-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    int-to-short v3, v3

    const v6, -0x7732cac7

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v2, v4, v5, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gu;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gu;-><init>()V

    aput-object v3, v4, v7

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/gu$c;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v7}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/2addr v2, v5

    int-to-byte v2, v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    move-object/from16 v4, v24

    invoke-static {v2, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/gs;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/gs;-><init>()V

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, -0x1000001

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v2, v3

    const v3, -0x3f958161

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-short v4, v4

    const v5, -0x7732cabf

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v5

    invoke-static {v2, v3, v1, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/gt$b;-><init>()V

    aput-object v2, v3, v7

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/gt$a;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/gt$a;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x3b

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v3, v25

    invoke-static {v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/ironsource/adqualitysdk/sdk/i/gd;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/gw;

    invoke-direct {v4}, Lcom/ironsource/adqualitysdk/sdk/i/gw;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->a:Ljava/util/Map;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_5ff

    const/4 v4, 0x1

    goto :goto_600

    :cond_5ff
    const/4 v4, 0x0

    :goto_600
    if-nez v4, :cond_603

    return-void

    :cond_603
    const/4 v0, 0x0

    :try_start_604
    throw v0
    :try_end_605
    .catchall {:try_start_604 .. :try_end_605} :catchall_605

    :catchall_605
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .registers 1

    const/4 v0, 0x6

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->c:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_24

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->b:[C

    const v0, 0x7732cb06

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->d:I

    const/4 v0, 0x0

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->e:I

    const v0, 0x3f9581b7

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f:I

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->g:[B

    return-void

    nop

    :array_24
    .array-data 2
        0x41s
        0x64s
        0x51s
        0x75s
        0x61s
        0x6cs
        0x69s
        0x74s
        0x79s
        0x53s
        0x68s
        0x72s
        0x65s
        0x43s
        0x6fs
        0x6es
        0x4ds
        0x62s
        0x70s
        0x4cs
        0x76s
        0x42s
        0x63s
        0x73s
        0x46s
        0x6bs
        0x49s
        0x67s
        0x4fs
        0x77s
        0x6ds
        0x54s
        0x56s
        0x7as
        0x59s
        0x44s
    .end array-data

    :array_4c
    .array-data 1
        0x9t
        0x3t
        0x2ft
        -0x2dt
        -0x1t
        -0xbt
        0x19t
        -0xct
        0x2ct
        0x9t
        0x2t
        -0xbt
        0xdt
        0x1dt
        -0x21t
        -0xft
        -0x5t
        0x37t
        0x6t
        0xbt
        -0x25t
        0x2t
        -0x9t
        0x31t
        0xat
        0x2t
        -0xft
        -0x3t
        0x6t
        0x1ct
        -0x1bt
        -0x1t
        -0x3t
        0x29t
        0x8t
        0xft
        -0x2t
        -0xbt
        0x11t
        0xdt
        -0x25t
        0x2ct
        0x9t
        -0x11t
        0xdt
        -0xbt
        0x13t
        0x13t
        -0x14t
        -0x13t
        0x25t
        0x6t
        -0x5t
        0x13t
        0x0t
        -0xct
        0x1at
        0x6t
        0xat
        0x5t
        -0x6t
        0xft
        0xdt
        0x8t
        0xft
        0x23t
        -0x38t
        0x5t
        0xbt
        -0x5t
        0x19t
        0x6t
        -0x7t
        0x5t
        -0x7t
        -0x7t
        0x1ft
    .end array-data
.end method

.method static b(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_2d

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->c(Ljava/util/List;)Z

    move-result p0

    if-eq v2, v0, :cond_27

    return p0

    :cond_27
    const/16 v0, 0x1a

    :try_start_29
    div-int/2addr v0, v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2b

    return p0

    :catchall_2b
    move-exception p0

    throw p0

    :cond_2d
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 p0, p0, 0x2

    return v1
.end method

.method private static c(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eq v0, v1, :cond_25

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    :cond_25
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-eq v0, v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x1

    :goto_44
    if-eqz v2, :cond_47

    goto :goto_e

    :cond_47
    return v1

    :cond_48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z

    const/4 p0, 0x0

    :try_start_52
    throw p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p0

    throw p0
.end method

.method static d()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0xf

    const-string v2, "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\u0008\t\n\u0010\n\u0006\u0011o"

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x21

    if-eqz v1, :cond_35

    const/16 v1, 0x2b

    goto :goto_37

    :cond_35
    const/16 v1, 0x21

    :goto_37
    if-ne v1, v2, :cond_3a

    return-object v0

    :cond_3a
    const/4 v0, 0x0

    :try_start_3b
    throw v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    throw v0
.end method

.method static e(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x50

    if-eqz v1, :cond_1c

    const/16 v1, 0x50

    goto :goto_1e

    :cond_1c
    const/16 v1, 0x3a

    :goto_1e
    if-eq v1, v2, :cond_21

    return-object v0

    :cond_21
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z

    move-result v3

    const/16 v4, 0x56

    :try_start_3a
    div-int/2addr v4, v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3e

    if-eqz v3, :cond_11

    goto :goto_4c

    :catchall_3e
    move-exception p0

    throw p0

    :cond_40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/gd;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ay;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_4c
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x1

    :goto_5b
    if-ne v2, v4, :cond_61

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    throw p0
.end method

.method private static f(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->e:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->g:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ay;->d:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ay;->d:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->d:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->f:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->g:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->h:[S

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

.method static g()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-ne v1, v2, :cond_1e

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    throw v0
.end method

.method private static varargs h([Lcom/ironsource/adqualitysdk/sdk/i/gd;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/adqualitysdk/sdk/i/gd;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eq v0, v1, :cond_18

    goto :goto_1b

    :cond_18
    const/16 v0, 0x4d

    :try_start_1a
    div-int/2addr v0, v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    :goto_1b
    return-object p0

    :catchall_1c
    move-exception p0

    throw p0
.end method

.method static i()Lcom/ironsource/adqualitysdk/sdk/i/gd;
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/fx;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/fx;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :goto_15
    if-ne v1, v2, :cond_18

    return-object v0

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    throw v0
.end method

.method private static j(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->b:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/ay;->c:C

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

.method public static ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/gd;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Prode;->ﾒ()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_1b

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_17
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gd;->ﻐ()Ljava/lang/Class;

    goto :goto_22

    :cond_1b
    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gd;->ﻛ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_36

    :goto_22
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ay;->j:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ay;->i:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    if-nez v0, :cond_32

    return v2

    :cond_32
    const/4 p0, 0x0

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    throw p0

    :catchall_36
    return v0
.end method
