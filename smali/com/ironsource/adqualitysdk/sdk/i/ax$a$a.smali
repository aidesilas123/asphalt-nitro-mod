###### Class com.ironsource.adqualitysdk.sdk.i.ax.a.C0339a (com.ironsource.adqualitysdk.sdk.i.ax$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:I = 0xc0

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->d:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/Throwable;)V
    .registers 24

    move-object/from16 v1, p0

    const-string v2, "\ufffb\u0001\uffff\u000c\uffdd\t\u0008\u0008\uffff\ufffd\u000e\t\u000c\uffe7\ufffb\u0008"

    const-string v3, ""

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->f:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_16
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v0

    iget-object v10, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v10, v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v10}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    shr-int/lit8 v10, v10, 0x6

    add-int/lit16 v10, v10, 0x12d

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    cmp-long v13, v11, v4

    add-int/lit8 v13, v13, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    add-int/lit8 v11, v11, 0x4

    const-string v12, "\u0001\ufffc\u0007\ufffc"

    invoke-static {v10, v9, v13, v11, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_53} :catch_5e

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->e:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v10, v0, 0x80

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_a1

    :catch_5e
    move-exception v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v10

    const/4 v11, 0x0

    const-string v12, "\u0003\u0014\uffbe\u0010\r\u0012\u0001\u0003\u000c\u000c\r\u0001\uffbe\r\u0012\uffbe\u0012\u0007\u000c\u0007\uffbe\u0005\u000c\u0007\u0012\u0012\u0003\u0011\uffbe\u0010\r\u0010\u0010\uffe3\u000c\r\u0011\u0008\uffbe\u000c\r\u0007\u0011\u0010"

    cmpl-float v10, v10, v11

    rsub-int v10, v10, 0x127

    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    invoke-static {v3, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x10

    invoke-static {v10, v9, v11, v13, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    rsub-int v11, v11, 0x122

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v13

    cmp-long v15, v13, v6

    add-int/lit8 v15, v15, 0x21

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/lit8 v13, v13, 0x2c

    invoke-static {v11, v8, v15, v13, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a1
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v0

    iget-object v10, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v10, v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v11, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v12, Lcom/ironsource/adqualitysdk/sdk/i/at$b;

    invoke-direct {v12, v0, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/at$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V

    invoke-static {v12}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    const/16 v0, 0x30

    const-string v12, "\u0007\u0012\u0007\u000c\u0007\uffbe\u0010\r\u0010\u0010\uffe3\uffbe\u0005\u000c\u0007\u0018\u0007\n\uffff"

    const-string v13, "\u000b\n\n\u0001\uffff\u0010\u000b\u000e\uffbc\uffff"

    const-string v14, "\uffe6\uffed\uffe3\u0006\ufff3\u0017\u0003\u000e\u000b\u0016\u001b\ufff5"

    const-string v15, "\u0013\u0016\u0016\t\uffc4\u0012\uffe5\uffc4\uffef\uffe8\ufff7\uffc4\u001d\u0018\r\u0010\u0005\u0019\ufff5\u0008\uffe5\ufff7\uffed\uffc4\u000b\u0012\r\u001e\r\u0010\u0005\r\u0018\r\u0012\r\uffc4\t\u0010\r\u000c\u001b\uffc4\u0008\t\u0016\u0016\u0019\u0007\u0007\u0013\uffc4\u0016"

    const-string v4, "\u0013\uffcf\uffc1\u0004\u0010\u000f\u000f\u0006\u0004\u0015\u0010"

    cmp-long v5, v10, v6

    add-int/lit16 v5, v5, 0x126

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x4

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x10

    invoke-static {v5, v9, v10, v11, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    rsub-int v5, v5, 0x121

    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    add-int/lit8 v10, v10, 0xb

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    add-int/lit8 v11, v11, 0x13

    invoke-static {v5, v8, v10, v11, v12}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int v5, v5, 0x124

    invoke-static {v3, v0, v9, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x7

    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0xa

    invoke-static {v5, v9, v10, v11, v13}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v18, p1

    invoke-static/range {v16 .. v21}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    rsub-int v2, v2, 0x11e

    invoke-static {v3, v0, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    rsub-int/lit8 v10, v10, 0xb

    invoke-static {v2, v9, v5, v10, v14}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v9}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v10

    cmp-long v12, v10, v6

    add-int/lit16 v12, v12, 0x11d

    invoke-static {v9}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    rsub-int/lit8 v7, v7, 0x35

    invoke-static {v12, v8, v6, v7, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int v0, v0, 0x11e

    invoke-static {v3, v3, v9, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v8, v6, v10

    add-int/lit8 v8, v8, 0xa

    invoke-static {v0, v9, v3, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ﻛ()V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﾇ()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->o:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/at$d;

    invoke-direct {v3, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/at$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    rsub-int v1, v1, 0x125

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\ufffb\u0001\uffff\u000c\uffdd\t\u0008\u0008\uffff\ufffd\u000e\t\u000c\uffe7\ufffb\u0008"

    const-string v7, ""

    const-string v8, "\u0007\u0007\u0014\uffbb\u0004\t\u0004\u000f\u0004\ufffc\u0007\u0004\u0015\u0000\uffff\uffbb\ufffe\n\t\t\u0000\ufffe\u000f\n\r\uffbb\u000e\u0010\ufffe\ufffe\u0000\u000e\u000e\u0001\u0010"

    cmp-long v9, v2, v4

    rsub-int/lit8 v2, v9, 0x5

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v1, v0, v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ax$a;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$a;->n:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v0, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    add-int/lit16 v3, v3, 0x125

    invoke-static {v7, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/lit8 v5, v5, 0x23

    invoke-static {v3, v0, v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->f:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$a$a;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_88

    const/4 v1, 0x0

    goto :goto_89

    :cond_88
    const/4 v1, 0x1

    :goto_89
    if-eq v1, v2, :cond_91

    const/16 v1, 0x3d

    :try_start_8d
    div-int/2addr v1, v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8f

    return-void

    :catchall_8f
    move-exception v0

    throw v0

    :cond_91
    return-void
.end method
