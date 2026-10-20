###### Class com.ironsource.adqualitysdk.sdk.i.cj.g (com.ironsource.adqualitysdk.sdk.i.cj$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$g;
.super Lcom/ironsource/adqualitysdk/sdk/i/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->j(Z)Lcom/ironsource/adqualitysdk/sdk/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:I = -0x6e7635c4

.field private static b:I = 0x7c

.field private static c:I = -0x6be38f03

.field private static d:[B = null

.field private static e:[S = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private synthetic h:Z

.field private synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x75

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->d:[B

    return-void

    :array_a
    .array-data 1
        -0x71t
        -0xdt
        -0x20t
        0xct
        -0x17t
        -0x10t
        -0xft
        -0x2t
        0x19t
        -0x2ct
        -0x9t
        -0x6ct
        0x77t
        -0x7at
        -0x7ct
        -0x45t
        0x69t
        -0x79t
        0x74t
        -0x60t
        0x7dt
        -0x7ct
        -0x7bt
        -0x6et
        -0x53t
        0x68t
        -0x75t
        -0x73t
        0x49t
        0x44t
        0x52t
        0x44t
        0x47t
        0x73t
        0x29t
        0x4dt
        -0x6dt
        -0x3et
        0x76t
        -0x69t
        -0x6at
        -0x3bt
        0x7bt
        -0x68t
        -0x6dt
        -0x5ft
        -0x6dt
        -0x6at
        -0x3et
        0x78t
        -0x64t
        -0x74t
        -0x3ct
        -0x49t
        -0x37t
        -0x38t
        -0x12t
        -0x5ct
        -0x38t
        -0x70t
        -0xat
        -0xct
        -0x4t
        -0x7t
        -0x1ct
        -0x9t
        0x2at
        -0x3ft
        0x9t
        -0xdt
        -0x16t
        -0x68t
        -0x30t
        -0x2dt
        -0x47t
        -0x5t
        -0x65t
        -0x30t
        -0x2dt
        -0x3at
        -0x39t
        -0xdt
        -0x58t
        -0x3et
        -0x38t
        -0x39t
        -0x2ct
        -0x11t
        -0x55t
        -0x39t
        -0x48t
        -0x71t
        0x4at
        0x4dt
        0x33t
        0x75t
        0x1ct
        0x42t
        0x3ft
        0x45t
        0x42t
        0x56t
        -0x6dt
        -0x4ft
        0x2t
        -0x14t
        -0x2t
        -0x1at
        -0xat
        -0x1t
        0x12t
        -0x23t
        0x18t
        -0x41t
        0x7t
        -0xft
        0x8t
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->i:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->h:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/s;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 18

    move-object v1, p0

    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->i:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v3, v6

    rsub-int/lit8 v3, v10, -0x7c

    const v4, 0x6be38f59

    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xb

    int-to-short v6, v6

    const v7, 0x6e76362a

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    shr-int/lit8 v11, v11, 0x16

    sub-int/2addr v7, v11

    invoke-static {v3, v10, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->h:Z

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v9

    aput-object p3, v4, v8

    aput-object p4, v4, v5

    const/4 v6, 0x3

    aput-object p5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v3, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/2addr v0, v5

    if-eqz v0, :cond_69

    const/4 v9, 0x1

    :cond_69
    if-eq v9, v8, :cond_6c

    return-void

    :cond_6c
    const/4 v0, 0x0

    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    move-object v2, v0

    throw v2
.end method

.method private static b(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->d:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->e:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->c:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->d:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->e:[S

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


# virtual methods
.method public final ﻐ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x7d

    const v2, 0x6be38f66

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const-string v4, ""

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x44

    int-to-short v4, v4

    const v5, 0x6e76361f

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    add-int/2addr v0, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﻐ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    add-int/lit8 v1, v1, -0x7d

    const v2, 0x6be38f64

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    int-to-byte v2, v2

    const-string v4, ""

    invoke-static {v4, v4, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x67

    int-to-short v0, v0

    const v5, 0x6e7635e8

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v1, v3, v2, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﻛ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_20

    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    const/4 p1, 0x1

    :goto_21
    if-eqz p1, :cond_24

    return-void

    :cond_24
    const/16 p1, 0xb

    :try_start_26
    div-int/2addr p1, p2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p1

    throw p1
.end method

.method public final synthetic ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x24

    if-nez v0, :cond_11

    const/16 v0, 0x1d

    goto :goto_13

    :cond_11
    const/16 v0, 0x24

    :goto_13
    check-cast p2, Landroid/view/View;

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾇ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    if-ne v0, v1, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method public final ﻛ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x7d

    const v1, 0x6be38f64

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    cmp-long v2, v6, v4

    rsub-int/lit8 v2, v2, 0x77

    int-to-short v2, v2

    const v4, 0x6e7635cf

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    sub-int/2addr v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ﻛ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V

    if-eqz v0, :cond_1f

    const/16 p1, 0x8

    :try_start_1b
    div-int/2addr p1, v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p1

    throw p1

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final ｋ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    cmpl-float v0, v0, v1

    add-int/lit8 v0, v0, -0x7e

    const v1, 0x6be38f64

    invoke-static {v3, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x3b

    int-to-short v3, v3

    const v4, 0x6e7635f7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    if-nez v0, :cond_11

    const/16 v0, 0x54

    goto :goto_13

    :cond_11
    const/16 v0, 0x2f

    :goto_13
    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾇ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V

    if-ne v0, v1, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method public final ﾇ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, -0x7d

    const v1, 0x6be38f63

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    add-int/2addr v2, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0xc

    int-to-short v3, v3

    const v5, 0x6f7635c4

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v0, v2, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾇ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    cmp-long v7, v0, v2

    rsub-int/lit8 v0, v7, -0x7c

    const v1, 0x6be38f7a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    invoke-static {v5, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float v2, v2, v4

    int-to-byte v2, v2

    invoke-static {v6, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x36

    int-to-short v3, v3

    const v4, 0x6e76360b

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﻐ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-nez p1, :cond_23

    return-void

    :cond_23
    const/4 p1, 0x0

    :try_start_24
    throw p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    throw p1
.end method

.method public final synthetic ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p2, Landroid/view/View;

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﻐ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, -0x7d

    const v1, 0x6be38f7a

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    const v4, 0x6e7635ff

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int/lit8 v0, v0, -0x7d

    const v1, 0x6be38f64

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/2addr v3, v1

    const/high16 v1, -0x1000000

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    add-int/lit8 v2, v2, -0x4b

    int-to-short v2, v2

    const v4, 0x6e76360f

    const/16 v5, 0x30

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->b(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ｋ(Lorg/json/JSONObject;Landroid/view/View;Landroid/app/Activity;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final synthetic ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    check-cast p2, Landroid/view/View;

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;Landroid/app/Activity;)V

    if-eq v0, v1, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 p1, 0x2f

    :try_start_1d
    div-int/2addr p1, v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_36

    :goto_1e
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->f:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cj$g;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0xd

    if-nez p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/16 v2, 0xd

    :goto_2f
    if-ne v2, p2, :cond_32

    return-void

    :cond_32
    const/4 p1, 0x0

    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p1

    throw p1

    :catchall_36
    move-exception p1

    throw p1
.end method
