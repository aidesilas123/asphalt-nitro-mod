###### Class com.json.adqualitysdk.sdk.i.dm (com.ironsource.adqualitysdk.sdk.i.dm)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/dm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:[B = null

.field private static n:[S = null

.field private static o:J = 0x0L

.field private static p:I = 0x0

.field private static q:C = '\u0000'

.field private static r:I = 0x0

.field private static s:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 25

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->c()V

    const-string v0, ""

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, -0x2e

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-string v11, "\u0000\u0000\u0000\u0000"

    const-string v15, "\uc9f3\u3548\ucc9e\ube81"

    const-string v7, "\ue9cb\u7fd1\ufd22\u3423\u12d0\uab6a\ufd64\u456b\u6cf7\ud269\ue20b\u55aa\uc607\u00c1\ua4e8\ua907"

    const-string v1, "\ub127\uf8f6\u4675\udb27"

    const-string v8, "\u0229\u27d9\u4518\u7dbc\u8b4e\ubfb3\ua11b\ua91b\u925d\u867f\ub786\u785c\u1f5d\u0293\uc428\uec17"

    const-string v9, "\ua78a\u7088\ud559\ua648"

    const-string v2, "\u4d50\ufeaf\ufca3\u0cd8\u1d7b\u5e7a\udbe0"

    const-string v12, "\u22c6\ue11f\u9ef6\u7385"

    const-string v10, "\uad75\u5c72\uf8ab"

    const-string v4, "\u4ef1\u7613\uee52\u898e"

    const-string v13, "\u37ef\u81d2\u24c4\ub4e4"

    const-string v14, "\ue137\uea8f\ucc4a\uca90"

    move-object/from16 v19, v14

    const-string v14, "\u1bd9\ue46f\ud64a\u4438"

    move-object/from16 v20, v14

    const-string v14, "\u2a72\ud31a\ua368\u5208"

    move-object/from16 v21, v14

    const-string v14, "\ub09b\u3960\u168a"

    const-wide/16 v17, 0x0

    cmp-long v22, v5, v17

    const v5, 0x1fe32116

    add-int v5, v22, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    move-object/from16 v22, v14

    rsub-int/lit8 v14, v16, 0x3b

    int-to-short v14, v14

    const v16, -0x1c208923

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v23

    shr-int/lit8 v23, v23, 0x10

    move-object/from16 v24, v4

    sub-int v4, v16, v23

    invoke-static {v3, v5, v6, v14, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a:Ljava/util/regex/Pattern;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const v4, 0x81cc

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v15, v11, v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dm;->b:Ljava/util/regex/Pattern;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v3, 0x1

    rsub-int/lit8 v4, v7, 0x1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    add-int/lit16 v3, v3, 0x2746

    int-to-char v3, v3

    invoke-static {v1, v11, v4, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->c:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x39

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const v5, 0x1fe32115

    sub-int v4, v5, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    int-to-byte v5, v5

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    const/4 v1, 0x6

    shr-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1e

    int-to-short v1, v6

    const v6, -0x1c20890b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v6

    invoke-static {v3, v4, v5, v1, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d:Ljava/util/regex/Pattern;

    const v1, 0x597088a7

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    const/4 v3, 0x0

    cmpl-float v4, v4, v3

    sub-int/2addr v1, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    invoke-static {v9, v11, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e:Ljava/util/regex/Pattern;

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x28

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    const v4, 0x1fe32115

    add-int/2addr v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v8

    cmpl-float v8, v8, v7

    rsub-int/lit8 v7, v8, 0x38

    int-to-short v7, v7

    const v8, -0x1c2088fd

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    cmp-long v2, v14, v4

    sub-int/2addr v8, v2

    invoke-static {v1, v3, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->f:Ljava/util/regex/Pattern;

    const v1, -0x91ee0de

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v1

    const v1, 0x859e

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int/2addr v4, v1

    int-to-char v1, v4

    invoke-static {v12, v11, v2, v1, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->g:Ljava/util/regex/Pattern;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x44

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    const v5, 0x1fe32115

    sub-int v9, v5, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/lit8 v8, v8, -0x1

    int-to-byte v4, v8

    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/lit8 v5, v5, -0x19

    int-to-short v1, v5

    const v3, -0x1c2088dd

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v3

    invoke-static {v2, v9, v4, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->h:Ljava/util/regex/Pattern;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v2, v4, -0x47

    const v4, 0x1fe32121

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    sub-int/2addr v4, v9

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    int-to-byte v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, -0x38

    int-to-short v5, v5

    const v6, -0x1c2088d9

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    sub-int/2addr v6, v7

    invoke-static {v2, v4, v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    const v4, 0x8eed

    const/16 v5, 0x30

    invoke-static {v0, v5, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-char v3, v4

    move-object/from16 v4, v24

    invoke-static {v4, v11, v2, v3, v13}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    rsub-int/lit8 v10, v2, 0x1

    const v2, 0x90cc

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    int-to-char v2, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-static {v3, v11, v10, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    rsub-int/lit8 v3, v7, -0x41

    const v4, 0x1fe32129

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    rsub-int/lit8 v6, v6, -0xb

    int-to-short v6, v6

    const v8, -0x1c2088d8

    const/4 v9, 0x0

    invoke-static {v0, v0, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v3, v5, v4, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    cmpl-float v3, v3, v7

    add-int/lit8 v3, v3, -0x44

    const v4, 0x1fe3212a

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v6, v6}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v7

    rsub-int/lit8 v6, v7, -0xe

    int-to-short v6, v6

    const v7, -0x1c2088d3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    sub-int/2addr v7, v8

    invoke-static {v3, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x68d31a29

    const/16 v4, 0x30

    invoke-static {v0, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    rsub-int v0, v0, 0x8a3

    int-to-char v0, v0

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    invoke-static {v4, v11, v3, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x43

    const v2, 0x1fe3211b

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    sub-int/2addr v2, v7

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    int-to-byte v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, -0x9

    int-to-short v4, v4

    const v5, -0x1c2088ce

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    sub-int/2addr v5, v10

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->i:Ljava/util/List;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v1, 0x31

    if-nez v0, :cond_303

    const/16 v0, 0x1c

    goto :goto_305

    :cond_303
    const/16 v0, 0x31

    :goto_305
    if-ne v0, v1, :cond_308

    return-void

    :cond_308
    const/4 v0, 0x0

    :try_start_309
    throw v0
    :try_end_30a
    .catchall {:try_start_309 .. :try_end_30a} :catchall_30a

    :catchall_30a
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dm;->k:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->m:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/dm;->j:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->n:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/dm;->j:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/dm;->j:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/dm;->l:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->m:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->n:[S

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

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    if-eqz v0, :cond_25

    const/16 v0, 0x26

    goto :goto_27

    :cond_25
    const/16 v0, 0xb

    :goto_27
    if-ne v0, v1, :cond_2a

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    throw p0
.end method

.method static c()V
    .registers 2

    const v0, 0x1c208950

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->j:I

    const/16 v0, 0x48

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->k:I

    const v0, -0x1fe320b7

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->l:I

    const/16 v0, 0x93

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->m:[B

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->o:J

    const/4 v0, 0x0

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->p:I

    const/16 v0, 0x6e56

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->q:C

    return-void

    nop

    :array_24
    .array-data 1
        -0x8t
        -0x2bt
        0x25t
        0x5t
        0x2bt
        0x31t
        -0x4ft
        -0x2t
        0x5t
        -0xct
        0xat
        -0xbt
        0x3t
        -0x2t
        0x4ft
        -0x55t
        0x12t
        0x40t
        -0x48t
        -0x8t
        0x4t
        -0xat
        -0x3t
        0x0t
        0x52t
        -0x48t
        -0x8t
        0x4t
        -0xbt
        0x0t
        0x10t
        -0x10t
        0x4ft
        -0x53t
        0x2t
        -0x4t
        -0x1t
        0x2ct
        -0x61t
        -0xet
        0x36t
        -0x9t
        0xct
        0x10t
        0x0t
        -0x6et
        -0x3dt
        0x0t
        -0x50t
        -0x2ft
        -0x3et
        -0x65t
        -0xet
        -0x4ft
        -0x74t
        0x12t
        -0x6ft
        -0x35t
        -0x3dt
        -0x3dt
        0x0t
        -0x71t
        -0xet
        -0x4ft
        -0x74t
        0x12t
        -0x6ft
        -0x35t
        -0x3et
        -0x50t
        0x6t
        -0x12t
        -0x21t
        -0x49t
        0xft
        -0x4ct
        0x13t
        -0x50t
        0x6t
        -0x12t
        -0x21t
        -0x49t
        -0x21t
        -0x38t
        -0x26t
        -0x43t
        -0x2ft
        -0x3t
        -0x66t
        -0x6t
        -0x6bt
        -0x9t
        -0x69t
        0x3t
        -0x4dt
        -0x2ct
        -0x3bt
        -0x62t
        -0xbt
        -0x4ct
        -0x71t
        0x15t
        -0x6ct
        -0x32t
        -0x3at
        -0x3at
        0x3t
        -0x6et
        -0xbt
        -0x4ct
        -0x71t
        0x15t
        -0x6ct
        -0x32t
        -0x3bt
        0x3at
        -0x6t
        0x3at
        0x18t
        0x35t
        0x8t
        0x9t
        0xdt
        0x1bt
        -0x1t
        0x1bt
        0x3t
        0x9t
        0x10t
        0xet
        -0x8t
        0x1ct
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->o:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->p:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->q:C

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

.method private static e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    if-eq v0, v1, :cond_31

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dt;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x37

    if-ge v5, v7, :cond_18

    const/4 v7, 0x5

    goto :goto_1a

    :cond_18
    const/16 v7, 0x37

    :goto_1a
    if-eq v7, v8, :cond_4e5

    add-int/lit8 v7, v5, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v7, v9, :cond_27

    const/4 v9, 0x0

    goto :goto_28

    :cond_27
    const/4 v9, 0x1

    :goto_28
    xor-int/2addr v9, v10

    if-eqz v9, :cond_2d

    const/4 v9, 0x0

    goto :goto_2e

    :cond_2d
    const/4 v9, 0x1

    :goto_2e
    const/16 v11, 0x2d

    if-eq v9, v10, :cond_49

    sget v9, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    add-int/2addr v9, v11

    rem-int/lit16 v12, v9, 0x80

    sput v12, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_44

    mul-int/lit8 v9, v5, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_4a

    :cond_44
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_4a

    :cond_49
    const/4 v9, 0x0

    :goto_4a
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-eq v12, v13, :cond_4d4

    const/16 v13, 0x25

    if-eq v12, v13, :cond_4ae

    const/16 v13, 0x5b

    if-eq v12, v13, :cond_4ae

    const/16 v13, 0x5d

    if-eq v12, v13, :cond_4ae

    const/16 v14, 0x7b

    if-eq v12, v14, :cond_4ae

    const/16 v14, 0x7d

    if-eq v12, v14, :cond_4ae

    const/16 v14, 0x21

    const-string v13, "\u0000\u0000\u0000\u0000"

    const-wide/16 v16, 0x0

    const-string v8, ""

    if-eq v12, v14, :cond_3e1

    const/16 v14, 0x22

    const v20, 0x1fe320d7

    const v21, 0x1fe32103

    if-eq v12, v14, :cond_300

    packed-switch v12, :pswitch_data_4e8

    packed-switch v12, :pswitch_data_4fe

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    const/16 v12, 0x1f

    if-eqz v9, :cond_8f

    const/16 v9, 0x37

    goto :goto_91

    :cond_8f
    const/16 v9, 0x1f

    :goto_91
    const/16 v14, 0x18

    if-eq v9, v12, :cond_af

    sget v8, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    add-int/lit8 v8, v8, 0x41

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a4

    const/16 v13, 0x18

    goto :goto_a6

    :cond_a4
    const/16 v13, 0x5d

    :goto_a6
    if-eq v13, v14, :cond_ab

    move v5, v7

    goto/16 :goto_e

    :cond_ab
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_e

    :cond_af
    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v12, Lcom/ironsource/adqualitysdk/sdk/i/dm;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_148

    sget v9, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    add-int/lit8 v9, v9, 0x57

    rem-int/lit16 v12, v9, 0x80

    sput v12, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    rem-int/lit8 v9, v9, 0x2

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v12, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_148

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v18

    const-string v14, "\ua954\u3820\u1221\u5a2a"

    const-string v11, "\uf3ff\u3cec\u2e07\u7b98"

    cmp-long v10, v18, v16

    rsub-int v10, v10, 0x2a13

    int-to-char v10, v10

    invoke-static {v14, v13, v15, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_146

    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v10

    add-int/lit8 v10, v10, -0x43

    const v11, 0x1fe3211d

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v18

    cmp-long v11, v18, v16

    add-int/lit8 v11, v11, -0x1

    int-to-byte v11, v11

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v18

    cmp-long v15, v18, v16

    add-int/lit8 v15, v15, -0x6

    int-to-short v15, v15

    const v18, -0x1c208927

    invoke-static {v8, v8, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v19

    sub-int v4, v18, v19

    invoke-static {v10, v14, v11, v15, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_137

    const/4 v4, 0x1

    goto :goto_138

    :cond_137
    const/4 v4, 0x0

    :goto_138
    if-eqz v4, :cond_13b

    goto :goto_146

    :cond_13b
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->i:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    goto :goto_148

    :cond_146
    :goto_146
    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    :cond_148
    :goto_148
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15a

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_15a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_162

    const/4 v4, 0x1

    goto :goto_163

    :cond_162
    const/4 v4, 0x0

    :goto_163
    const/4 v10, 0x1

    if-eq v4, v10, :cond_167

    goto :goto_188

    :cond_167
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->r:I

    add-int/lit8 v4, v4, 0x3b

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/dm;->s:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_176

    const/16 v4, 0x23

    goto :goto_178

    :cond_176
    const/16 v4, 0x3a

    :goto_178
    const/16 v9, 0x3a

    if-ne v4, v9, :cond_290

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_188
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19a

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_19a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    sget-object v9, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dm;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1ac
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c1

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    invoke-direct {v4, v9, v12, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_4d1

    :cond_1c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10, v9, v9}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v11

    const-string v12, "\uc995\ud79b\uf12d\u7a37"

    const-string v14, "\ua17b\u6259\u32bb\u23fb\ufd91\u90fa\u95c3\ucfd2\u0dd0\ufc15\u5e61\uc4cc\ue4c2\ub7ca\u56fc\u2801\uc041\u25c7"

    const-string v15, "\u1d8e\ubfaa\u2bd7\u1528"

    const-string v10, "\ua4dd\u953c\u4e8f\uc10e\u6534\ufd8d\ue15a\u826d\ua60d\ua863\uf98d\u7c5f\u757d"

    cmpl-float v9, v11, v9

    add-int/lit8 v9, v9, -0x42

    const/4 v11, 0x0

    invoke-static {v8, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v18

    move/from16 v22, v7

    add-int v7, v18, v21

    move-object/from16 v23, v3

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v11

    rsub-int/lit8 v11, v11, -0x18

    int-to-short v11, v11

    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v16

    move/from16 v24, v6

    const v17, -0x1c208950

    sub-int v6, v17, v16

    invoke-static {v9, v7, v3, v11, v6}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v8, v6}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    rsub-int v6, v9, 0x37f1

    int-to-char v6, v6

    invoke-static {v12, v13, v7, v6, v14}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v6, -0x284055e3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    const/16 v9, 0x18

    shr-int/2addr v7, v9

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v9

    add-int/lit16 v9, v9, 0x282c

    int-to-char v9, v9

    invoke-static {v15, v13, v6, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x44

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int v6, v20, v6

    invoke-static {v8, v7}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v9

    int-to-byte v9, v9

    invoke-static {v8, v7, v7}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v10

    add-int/lit8 v10, v10, 0x13

    int-to-short v7, v10

    const v10, -0x1c20892a

    invoke-static {v8, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    sub-int/2addr v10, v8

    invoke-static {v5, v6, v9, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v5, v22

    move-object/from16 v3, v23

    move/from16 v6, v24

    goto/16 :goto_4d1

    :cond_290
    const/4 v6, 0x0

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    :try_start_29c
    throw v6
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_29d

    :catchall_29d
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_2a0
    move/from16 v22, v7

    move v10, v6

    :goto_2a3
    move-object v6, v3

    goto/16 :goto_3e6

    :pswitch_2a6
    move/from16 v22, v7

    move v10, v6

    :goto_2a9
    const/4 v7, 0x0

    move-object v6, v3

    goto/16 :goto_4b3

    :pswitch_2ad
    move/from16 v22, v7

    move v10, v6

    move-object v6, v3

    :cond_2b1
    const/16 v3, 0x2d

    goto/16 :goto_485

    :pswitch_2b5
    move/from16 v22, v7

    move v10, v6

    move-object v6, v3

    goto/16 :goto_43b

    :pswitch_2bb
    move-object/from16 v23, v3

    move/from16 v24, v6

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dm;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2ec

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v10, v24

    invoke-direct {v4, v7, v6, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    move-object/from16 v6, v23

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2fa

    :cond_2ec
    move-object/from16 v6, v23

    move/from16 v10, v24

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    invoke-direct {v4, v7, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2fa
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_3dc

    :cond_300
    move v10, v6

    move/from16 v22, v7

    move-object v6, v3

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/dm;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->e(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3ca

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, -0x42

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    add-int v9, v9, v21

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v11

    cmp-long v7, v11, v16

    const/4 v11, 0x1

    rsub-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    rsub-int/lit8 v11, v11, -0x17

    int-to-short v11, v11

    const v12, -0x1c20894f

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    sub-int/2addr v12, v14

    invoke-static {v4, v9, v7, v11, v12}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    add-int/lit8 v7, v7, -0x27

    const v9, 0x1fe320fc

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    add-int/2addr v12, v9

    invoke-static {v11, v11}, Landroid/view/View;->getDefaultSize(II)I

    move-result v9

    int-to-byte v9, v9

    invoke-static {v11, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-short v13, v13

    const v14, -0x1c20894a

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v14

    invoke-static {v7, v12, v9, v13, v15}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v11, v11}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x44

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int v7, v7, v20

    const/16 v9, 0x30

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    rsub-int/lit8 v11, v11, 0x30

    int-to-byte v11, v11

    invoke-static {v8, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    int-to-short v8, v8

    const v9, -0x1c208929

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v12

    cmp-long v14, v12, v16

    sub-int/2addr v9, v14

    invoke-static {v5, v7, v11, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4cd

    :cond_3ca
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    invoke-direct {v4, v7, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3dc
    add-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    goto/16 :goto_482

    :cond_3e1
    move v10, v6

    move/from16 v22, v7

    goto/16 :goto_2a3

    :goto_3e6
    const/16 v3, 0x3d

    if-ne v9, v3, :cond_43b

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v9, v11, v16

    add-int/lit8 v9, v9, -0x48

    const v11, 0x1fe320f4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    sub-int/2addr v11, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    rsub-int/lit8 v13, v14, -0x36

    int-to-short v13, v13

    const v14, -0x1c208951

    const/16 v15, 0x30

    invoke-static {v8, v15}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    sub-int/2addr v14, v8

    invoke-static {v9, v11, v12, v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_480

    :cond_43b
    :goto_43b
    const/16 v3, 0x2b

    if-ne v9, v3, :cond_2b1

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8, v7, v7}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v9

    cmpl-float v8, v9, v7

    add-int/lit8 v8, v8, -0x46

    const v9, 0x1fe320e1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v11

    cmpl-float v11, v11, v7

    add-int/2addr v11, v9

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v9

    cmpl-float v7, v9, v7

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x8

    int-to-short v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    const v13, -0x1c208950

    sub-int v15, v13, v12

    invoke-static {v8, v11, v7, v9, v15}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->a(IIBSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_480
    add-int/lit8 v5, v5, 0x2

    :goto_482
    move-object v3, v6

    move v6, v10

    goto :goto_4d1

    :goto_485
    if-ne v9, v3, :cond_4ac

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    const/4 v7, 0x0

    invoke-static {v8, v8, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v9

    const v11, 0x96f5

    invoke-static {v8, v7, v7}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v8

    add-int/2addr v8, v11

    int-to-char v8, v8

    const-string v11, "\u55a3\u77b4\uf55c\uc196"

    const-string v12, "\u54c2\u553b"

    invoke-static {v11, v13, v9, v8, v12}, Lcom/ironsource/adqualitysdk/sdk/i/dm;->d(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_480

    :cond_4ac
    const/4 v7, 0x0

    goto :goto_4b3

    :cond_4ae
    move v10, v6

    move/from16 v22, v7

    goto/16 :goto_2a9

    :goto_4b3
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/dt;

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/dt$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/dt$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v10}, Lcom/ironsource/adqualitysdk/sdk/i/dt;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dt$a;Ljava/lang/String;I)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4cd
    move-object v3, v6

    move v6, v10

    move/from16 v5, v22

    :goto_4d1
    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_4d4
    move v10, v6

    move/from16 v22, v7

    const/4 v7, 0x0

    move-object v6, v3

    add-int/lit8 v3, v10, 0x1

    move/from16 v5, v22

    const/4 v4, 0x0

    move-object/from16 v25, v6

    move v6, v3

    move-object/from16 v3, v25

    goto/16 :goto_e

    :cond_4e5
    move-object v6, v3

    return-object v6

    nop

    :pswitch_data_4e8
    .packed-switch 0x27
        :pswitch_2bb
        :pswitch_2a6
        :pswitch_2a6
        :pswitch_2a6
        :pswitch_2b5
        :pswitch_2a6
        :pswitch_2ad
        :pswitch_2a6
        :pswitch_2a6
    .end packed-switch

    :pswitch_data_4fe
    .packed-switch 0x3a
        :pswitch_2a6
        :pswitch_2a6
        :pswitch_2a0
        :pswitch_2a0
        :pswitch_2a0
    .end packed-switch
.end method
